require "test_helper"

class DietPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diet_plans_index_url
    assert_response :success
  end

  test "should get show" do
    get diet_plans_show_url
    assert_response :success
  end
end
