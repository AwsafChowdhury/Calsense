require "test_helper"

class HealthExpertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index_nutrition" do
    get health_experts_index_nutrition_url
    assert_response :success
  end

  test "should get index_doctors" do
    get health_experts_index_doctors_url
    assert_response :success
  end

  test "should get index_fitness" do
    get health_experts_index_fitness_url
    assert_response :success
  end
end
