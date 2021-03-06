require "test_helper"

class PowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power = powers(:one)
  end

  test "should get index" do
    get powers_url
    assert_response :success
  end

  test "should get new" do
    get new_power_url
    assert_response :success
  end

  test "should create power" do
    assert_difference('Power.count') do
      post powers_url, params: { power: { category: @power.category, description: @power.description, known_users: @power.known_users, limitations: @power.limitations, name: @power.name } }
    end

    assert_redirected_to power_url(Power.last)
  end

  test "should show power" do
    get power_url(@power)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_url(@power)
    assert_response :success
  end

  test "should update power" do
    patch power_url(@power), params: { power: { category: @power.category, description: @power.description, known_users: @power.known_users, limitations: @power.limitations, name: @power.name } }
    assert_redirected_to power_url(@power)
  end

  test "should destroy power" do
    assert_difference('Power.count', -1) do
      delete power_url(@power)
    end

    assert_redirected_to powers_url
  end
end
