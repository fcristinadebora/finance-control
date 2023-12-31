require "test_helper"

class MovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movement = movements(:one)
  end

  test "should get index" do
    get movements_url
    assert_response :success
  end

  test "should get new" do
    get new_movement_url
    assert_response :success
  end

  test "should create movement" do
    assert_difference("Movement.count") do
      post movements_url, params: { movement: { account_id: @movement.account_id, date: @movement.date, title: @movement.title, value: @movement.value } }
    end

    assert_redirected_to movement_url(Movement.last)
  end

  test "should show movement" do
    get movement_url(@movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_movement_url(@movement)
    assert_response :success
  end

  test "should update movement" do
    patch movement_url(@movement), params: { movement: { account_id: @movement.account_id, date: @movement.date, title: @movement.title, value: @movement.value } }
    assert_redirected_to movement_url(@movement)
  end

  test "should destroy movement" do
    assert_difference("Movement.count", -1) do
      delete movement_url(@movement)
    end

    assert_redirected_to movements_url
  end
end
