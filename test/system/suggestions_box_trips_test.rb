require "application_system_test_case"

class SuggestionsBoxTripsTest < ApplicationSystemTestCase
  setup do
    @suggestions_box_trip = suggestions_box_trips(:one)
  end

  test "visiting the index" do
    visit suggestions_box_trips_url
    assert_selector "h1", text: "Suggestions Box Trips"
  end

  test "creating a Suggestions box trip" do
    visit suggestions_box_trips_url
    click_on "New Suggestions Box Trip"

    fill_in "Description", with: @suggestions_box_trip.description
    fill_in "Image url", with: @suggestions_box_trip.image_url
    fill_in "Name", with: @suggestions_box_trip.name
    fill_in "Rating", with: @suggestions_box_trip.rating
    click_on "Create Suggestions box trip"

    assert_text "Suggestions box trip was successfully created"
    click_on "Back"
  end

  test "updating a Suggestions box trip" do
    visit suggestions_box_trips_url
    click_on "Edit", match: :first

    fill_in "Description", with: @suggestions_box_trip.description
    fill_in "Image url", with: @suggestions_box_trip.image_url
    fill_in "Name", with: @suggestions_box_trip.name
    fill_in "Rating", with: @suggestions_box_trip.rating
    click_on "Update Suggestions box trip"

    assert_text "Suggestions box trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggestions box trip" do
    visit suggestions_box_trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggestions box trip was successfully destroyed"
  end
end
