require 'test_helper'

class SuggestionsBoxTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestions_box_trip = suggestions_box_trips(:one)
  end

  test "should get index" do
    get suggestions_box_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestions_box_trip_url
    assert_response :success
  end

  test "should create suggestions_box_trip" do
    assert_difference('SuggestionsBoxTrip.count') do
      post suggestions_box_trips_url, params: { suggestions_box_trip: { description: @suggestions_box_trip.description, image_url: @suggestions_box_trip.image_url, name: @suggestions_box_trip.name, rating: @suggestions_box_trip.rating } }
    end

    assert_redirected_to suggestions_box_trip_url(SuggestionsBoxTrip.last)
  end

  test "should show suggestions_box_trip" do
    get suggestions_box_trip_url(@suggestions_box_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestions_box_trip_url(@suggestions_box_trip)
    assert_response :success
  end

  test "should update suggestions_box_trip" do
    patch suggestions_box_trip_url(@suggestions_box_trip), params: { suggestions_box_trip: { description: @suggestions_box_trip.description, image_url: @suggestions_box_trip.image_url, name: @suggestions_box_trip.name, rating: @suggestions_box_trip.rating } }
    assert_redirected_to suggestions_box_trip_url(@suggestions_box_trip)
  end

  test "should destroy suggestions_box_trip" do
    assert_difference('SuggestionsBoxTrip.count', -1) do
      delete suggestions_box_trip_url(@suggestions_box_trip)
    end

    assert_redirected_to suggestions_box_trips_url
  end
end
