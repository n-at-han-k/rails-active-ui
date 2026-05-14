examples_dir = Rails.root.join("app/views/examples")
entries = Dir.glob(examples_dir.join("**/*")).select { |f| File.file?(f) }.sort
grouped = {}

entries.each do |file|
  relative = Pathname.new(file).relative_path_from(examples_dir).to_s
  parts = relative.split("/")
  name = File.basename(parts.last).split(".").first
  next if name.start_with?("_") || name == "index"
  next unless parts.length > 1

  folder = parts.first
  grouped[folder] ||= []
  grouped[folder] << { name: name, path: parts.map { |p| File.basename(p).split(".").first }.join("/") }
end

section_order = %w[examples elements collections modules views]
section_icons = {
  "examples"    => "browser",
  "elements"    => "cube",
  "collections" => "cubes",
  "modules"     => "puzzle piece",
  "views"       => "eye",
}

Container {
  Header(size: :h1, dividing: true) { "Fomantic-UI Examples" }

  text "These examples demonstrate the component library translated from the "
  LinkTo(href: "https://github.com/fomantic/Fomantic-UI/tree/develop/examples") { "Fomantic-UI examples" }
  text "."

  section_order.each do |folder|
    next unless grouped[folder]

    Header(size: :h2, dividing: true) {
      Icon(name: section_icons[folder] || "folder")
      text folder.titleize
    }

    List(divided: true, relaxed: true, size: "big") {
      grouped[folder].sort_by { |i| i[:name] }.each do |item|
        MenuItem {
          LinkTo(href: "/examples/#{item[:path]}") { item[:name].titleize }
        }
      end
    }
  end
}
