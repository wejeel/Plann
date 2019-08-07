require 'test_helper'

class TripTodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_todo = trip_todos(:one)
  end

  test "should get index" do
    get trip_todos_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_todo_url
    assert_response :success
  end

  test "should create trip_todo" do
    assert_difference('TripTodo.count') do
      post trip_todos_url, params: { trip_todo: {  } }
    end

    assert_redirected_to trip_todo_url(TripTodo.last)
  end

  test "should show trip_todo" do
    get trip_todo_url(@trip_todo)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_todo_url(@trip_todo)
    assert_response :success
  end

  test "should update trip_todo" do
    patch trip_todo_url(@trip_todo), params: { trip_todo: {  } }
    assert_redirected_to trip_todo_url(@trip_todo)
  end

  test "should destroy trip_todo" do
    assert_difference('TripTodo.count', -1) do
      delete trip_todo_url(@trip_todo)
    end

    assert_redirected_to trip_todos_url
  end
end
