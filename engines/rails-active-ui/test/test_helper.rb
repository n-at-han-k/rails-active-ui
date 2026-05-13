# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require_relative "dummy/config/environment"
ActiveRecord::Migrator.migrations_paths = [ File.expand_path("dummy/db/migrate", __dir__) ]
require "rails/test_help"

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_paths=)
  ActiveSupport::TestCase.fixture_paths = [ File.expand_path("fixtures", __dir__) ]
  ActionDispatch::IntegrationTest.fixture_paths = ActiveSupport::TestCase.fixture_paths
  ActiveSupport::TestCase.file_fixture_path = File.expand_path("fixtures", __dir__) + "/files"
  ActiveSupport::TestCase.fixtures :all
end

# Shared test view context for component rendering.
# Provides the minimal interface that Component#render_in expects:
# output_buffer, capture, tag, and safe_join.
class ComponentTestContext
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::OutputSafetyHelper
  attr_accessor :output_buffer

  def initialize
    @output_buffer = ActionView::OutputBuffer.new
  end
end

# Base class for component tests. Provides a fresh context and
# a render helper that calls render_in and returns the output.
#
# Block conventions in tests:
#   - No block parameter: bare content mode, write to ctx.output_buffer
#       render_inline(Comp) { ctx.output_buffer << "text" }
#   - With |c| parameter: slotted mode, c is the component instance.
#       Slot blocks write to ctx.output_buffer.
#       render_inline(Comp) { |c| c.header { ctx.output_buffer << "Head".html_safe } }
#
# Because render_in calls capture(self, &block), the block parameter is the
# component. To write content, tests must reference the context (ctx) which
# is exposed as an instance variable @_test_ctx during rendering.
class ComponentTestCase < ActiveSupport::TestCase
  private

  def build_context
    ComponentTestContext.new
  end

  # Render a component instance, optionally with a block.
  # Returns the rendered HTML string.
  #
  # The block receives the component as |c| (for slot assignment).
  # To write bare content, use @_test_ctx.output_buffer inside the block.
  def render_component(component, context: nil, &block)
    @_test_ctx = context || build_context
    result = component.render_in(@_test_ctx, &block)
    @_test_ctx.output_buffer << result
    @_test_ctx.output_buffer.to_s
  end

  # Shorthand: instantiate and render in one call.
  def render_inline(klass, **attrs, &block)
    render_component(klass.new(**attrs), &block)
  end

  # Access the test context's output buffer for writing content in blocks.
  def ctx
    @_test_ctx
  end
end
