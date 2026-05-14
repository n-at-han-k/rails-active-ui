# frozen_string_literal: true

# Rake tasks for exporting the examples site as static HTML for GitHub Pages.
#
# Usage:
#   rake static:export                         # Export with default base path "/"
#   rake static:export BASE_PATH=/rails-active-ui  # Export with a custom base path
#
# The output is written to _site/ in the project root.

namespace :static do
  desc 'Export examples as a static site to _site/ (set BASE_PATH for GitHub Pages subpath)'
  task export: :environment do
    require 'fileutils'

    base_path = (ENV['BASE_PATH'] || '/').chomp('/')
    base_path = '' if base_path == '/'
    output_dir = Rails.root.join('_site')

    # Clean previous build
    FileUtils.rm_rf(output_dir)
    FileUtils.mkdir_p(output_dir)

    # ---------------------------------------------------------------
    # 1. Discover all example routes by scanning the views directory
    # ---------------------------------------------------------------
    examples_dir = Rails.root.join('app/views/examples')
    view_files = Dir.glob(examples_dir.join('**/*.html.ruby')).sort

    paths = view_files.map do |file|
      relative = Pathname.new(file).relative_path_from(examples_dir).to_s
      parts = relative.split('/')
      parts.last.sub!(/\.html\.ruby$/, '')
      parts.join('/')
    end

    # The root/index page is special
    paths.delete('index')
    route_paths = ['index'] + paths

    puts "Found #{route_paths.size} pages to export"

    # ---------------------------------------------------------------
    # 2. Set up the integration session to render pages
    # ---------------------------------------------------------------
    app = Rails.application

    # Disable host authorization so the integration session isn't blocked.
    # The default test host (www.example.com / localhost) is not in the
    # allowed hosts list, which would cause 403 responses.
    app.config.hosts.clear

    session = ActionDispatch::Integration::Session.new(app)
    session.host = 'localhost'

    # ---------------------------------------------------------------
    # 3. Render each page and save to disk
    # ---------------------------------------------------------------
    route_paths.each do |view_path|
      url_path = view_path == 'index' ? '/examples' : "/examples/#{view_path}"

      session.get(url_path)

      if session.response.status != 200
        puts "  SKIP #{url_path} (HTTP #{session.response.status})"
        next
      end

      html = session.response.body

      # Rewrite asset and link paths for the static site
      html = rewrite_html(html, base_path)

      # Write as directory-style: /examples/elements/button/index.html
      dest = if view_path == 'index'
               output_dir.join('index.html')
             else
               output_dir.join('examples', view_path, 'index.html')
             end

      FileUtils.mkdir_p(dest.dirname)
      File.write(dest, html)
      puts "  OK #{url_path} -> #{dest.relative_path_from(output_dir)}"
    end

    # ---------------------------------------------------------------
    # 4. Copy static assets
    # ---------------------------------------------------------------

    # 4a. Public assets (images, icons, error pages)
    public_dir = Rails.root.join('public')
    Dir.glob(public_dir.join('**/*')).each do |src|
      next if File.directory?(src)

      relative = Pathname.new(src).relative_path_from(public_dir).to_s
      # Skip Rails-generated files we don't need
      next if relative.start_with?('packs/') || relative == '.manifest.json'

      dest = output_dir.join(relative)
      FileUtils.mkdir_p(dest.dirname)
      FileUtils.cp(src, dest)
    end
    puts '  Copied public/ assets'

    # 4b. Propshaft-compiled assets
    # Propshaft resolves assets into logical paths; we need to copy them
    # so that the <link>/<script> tags in the HTML work.
    copy_propshaft_assets(output_dir)
    puts '  Copied Propshaft assets'

    # 4c. If there's a .nojekyll file needed for GitHub Pages
    File.write(output_dir.join('.nojekyll'), '')

    puts "\nDone! Static site exported to #{output_dir}"
    puts 'Serve locally with: npx serve _site'
  end
end

# Rewrite absolute URLs in the rendered HTML so they work under a base path
# and point to the correct static file locations.
def rewrite_html(html, base_path)
  # Rewrite href="/examples/foo/bar" -> href="#{base_path}/examples/foo/bar/"
  # This makes links work with directory-style index.html files.
  html = html.gsub(%r{href="/examples/([\w/-]+)"}) do |_match|
    path = Regexp.last_match(1)
    %(href="#{base_path}/examples/#{path}/")
  end

  # Rewrite href="/examples" (the index link)
  html = html.gsub('href="/examples"', %(href="#{base_path}/"))
  html = html.gsub('href="/"', %(href="#{base_path}/"))

  # Rewrite asset paths: /assets/... -> #{base_path}/assets/...
  # Propshaft generates paths like /assets/semantic.min-DIGEST.css
  html = html.gsub(%r{(?:src|href)="/assets/}) do |match|
    match.sub('/assets/', "#{base_path}/assets/")
  end

  # Rewrite image paths: /images/... -> #{base_path}/images/...
  html = html.gsub(%r{(src|href)="/images/}) do |match|
    match.sub('/images/', "#{base_path}/images/")
  end

  # Rewrite icon paths
  html = html.gsub(%r{(src|href)="/(icon\.(png|svg))"}) do
    %(#{Regexp.last_match(1)}="#{base_path}/#{Regexp.last_match(2)}")
  end

  # Rewrite importmap JSON paths: "/assets/..." -> "#{base_path}/assets/..."
  # The importmap <script> block contains JSON with absolute paths
  html.gsub(%r{"/assets/([^"]+)"}) do
    %("#{base_path}/assets/#{Regexp.last_match(1)}")
  end
end

# Copy all assets that Propshaft knows about into the output directory.
# This includes Fomantic UI CSS/JS, application CSS, Stimulus/Turbo JS, etc.
def copy_propshaft_assets(output_dir)
  assets_dir = output_dir.join('assets')
  FileUtils.mkdir_p(assets_dir)

  assembly = Rails.application.assets

  if assembly.respond_to?(:load_path)
    # Propshaft — iterate over all known assets
    assembly.load_path.assets.each do |asset|
      # The digested name is what appears in HTML (e.g., "semantic.min-abc123.css")
      digested_name = asset.digested_path.to_s
      source_path = asset.path

      dest = assets_dir.join(digested_name)
      FileUtils.mkdir_p(dest.dirname)
      FileUtils.cp(source_path, dest)
    end
  else
    # Fallback: just copy from the public/assets directory if it exists
    public_assets = Rails.root.join('public', 'assets')
    FileUtils.cp_r(public_assets.to_s + '/.', assets_dir) if public_assets.exist?
  end
end
