require 'test_helper'

class FooTest < ActionDispatch::IntegrationTest
  test "post to /foo with params valid equal true return a text 'BAR'" do
    post "/foo", valid: 'true'
    assert_equal response.body, "BAR"
  end

  test "post to /foo with params valid diferent of true return a raise error" do
    assert_raises ("RuntimeError") do
      post "/foo", valid: 'false'
    end
  end

  test "post to /foo without params valid should return a raise error" do
    assert_raises ("RuntimeError") do
      post "/foo"
    end
  end

end
