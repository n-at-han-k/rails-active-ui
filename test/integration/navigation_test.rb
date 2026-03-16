require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  EXAMPLE_ROUTES = %w[
    /
    /examples
    /examples/login
    /examples/homepage
    /examples/fixed
    /examples/attached
    /examples/sticky
    /examples/grid
    /examples/bootstrap
    /examples/responsive
    /examples/dashboard
  ].freeze

  EXAMPLE_ROUTES.each do |path|
    test "GET #{path} returns 200" do
      get path
      assert_response :success, "Expected 200 for #{path}, got #{response.status}: #{response.body[0..500]}"
    end
  end
end
