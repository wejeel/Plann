require "application_system_test_case"

class TripTodosTest < ApplicationSystemTestCase
  setup do
    @trip_todo = trip_todos(:one)
  end

  test "visiting the index" do
    visit trip_todos_url
    assert_selector "h1", text: "Trip Todos"
  end

  test "creating a Trip todo" do
    visit trip_todos_url
    click_on "New Trip Todo"

    click_on "Create Trip todo"

    assert_text "Trip todo was successfully created"
    click_on "Back"
  end

  test "updating a Trip todo" do
    visit trip_todos_url
    click_on "Edit", match: :first

    click_on "Update Trip todo"

    assert_text "Trip todo was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip todo" do
    visit trip_todos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip todo was successfully destroyed"
  end
end
