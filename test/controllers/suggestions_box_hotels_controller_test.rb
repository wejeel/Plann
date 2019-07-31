require 'test_helper'

class SuggestionsBoxHotelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestions_box_hotel = suggestions_box_hotels(:one)
  end

  test "should get index" do
    get suggestions_box_hotels_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestions_box_hotel_url
    assert_response :success
  end

  test "should create suggestions_box_hotel" do
    assert_difference('SuggestionsBoxHotel.count') do
      post suggestions_box_hotels_url, params: { suggestions_box_hotel: { buffet: @suggestions_box_hotel.buffet, city: @suggestions_box_hotel.city, country: @suggestions_box_hotel.country, decimal: @suggestions_box_hotel.decimal, gym: @suggestions_box_hotel.gym, hall: @suggestions_box_hotel.hall, hotel_name: @suggestions_box_hotel.hotel_name, image: @suggestions_box_hotel.image, pernight: @suggestions_box_hotel.pernight, rating: @suggestions_box_hotel.rating } }
    end

    assert_redirected_to suggestions_box_hotel_url(SuggestionsBoxHotel.last)
  end

  test "should show suggestions_box_hotel" do
    get suggestions_box_hotel_url(@suggestions_box_hotel)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestions_box_hotel_url(@suggestions_box_hotel)
    assert_response :success
  end

  test "should update suggestions_box_hotel" do
    patch suggestions_box_hotel_url(@suggestions_box_hotel), params: { suggestions_box_hotel: { buffet: @suggestions_box_hotel.buffet, city: @suggestions_box_hotel.city, country: @suggestions_box_hotel.country, decimal: @suggestions_box_hotel.decimal, gym: @suggestions_box_hotel.gym, hall: @suggestions_box_hotel.hall, hotel_name: @suggestions_box_hotel.hotel_name, image: @suggestions_box_hotel.image, pernight: @suggestions_box_hotel.pernight, rating: @suggestions_box_hotel.rating } }
    assert_redirected_to suggestions_box_hotel_url(@suggestions_box_hotel)
  end

  test "should destroy suggestions_box_hotel" do
    assert_difference('SuggestionsBoxHotel.count', -1) do
      delete suggestions_box_hotel_url(@suggestions_box_hotel)
    end

    assert_redirected_to suggestions_box_hotels_url
  end
end
