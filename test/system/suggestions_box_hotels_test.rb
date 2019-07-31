require "application_system_test_case"

class SuggestionsBoxHotelsTest < ApplicationSystemTestCase
  setup do
    @suggestions_box_hotel = suggestions_box_hotels(:one)
  end

  test "visiting the index" do
    visit suggestions_box_hotels_url
    assert_selector "h1", text: "Suggestions Box Hotels"
  end

  test "creating a Suggestions box hotel" do
    visit suggestions_box_hotels_url
    click_on "New Suggestions Box Hotel"

    check "Buffet" if @suggestions_box_hotel.buffet
    fill_in "City", with: @suggestions_box_hotel.city
    fill_in "Country", with: @suggestions_box_hotel.country
    fill_in "Decimal", with: @suggestions_box_hotel.decimal
    check "Gym" if @suggestions_box_hotel.gym
    check "Hall" if @suggestions_box_hotel.hall
    fill_in "Hotel name", with: @suggestions_box_hotel.hotel_name
    fill_in "Image", with: @suggestions_box_hotel.image
    fill_in "Pernight", with: @suggestions_box_hotel.pernight
    fill_in "Rating", with: @suggestions_box_hotel.rating
    click_on "Create Suggestions box hotel"

    assert_text "Suggestions box hotel was successfully created"
    click_on "Back"
  end

  test "updating a Suggestions box hotel" do
    visit suggestions_box_hotels_url
    click_on "Edit", match: :first

    check "Buffet" if @suggestions_box_hotel.buffet
    fill_in "City", with: @suggestions_box_hotel.city
    fill_in "Country", with: @suggestions_box_hotel.country
    fill_in "Decimal", with: @suggestions_box_hotel.decimal
    check "Gym" if @suggestions_box_hotel.gym
    check "Hall" if @suggestions_box_hotel.hall
    fill_in "Hotel name", with: @suggestions_box_hotel.hotel_name
    fill_in "Image", with: @suggestions_box_hotel.image
    fill_in "Pernight", with: @suggestions_box_hotel.pernight
    fill_in "Rating", with: @suggestions_box_hotel.rating
    click_on "Update Suggestions box hotel"

    assert_text "Suggestions box hotel was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggestions box hotel" do
    visit suggestions_box_hotels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggestions box hotel was successfully destroyed"
  end
end
