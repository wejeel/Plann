require "application_system_test_case"

class UploadFilesTest < ApplicationSystemTestCase
  setup do
    @upload_file = upload_files(:one)
  end

  test "visiting the index" do
    visit upload_files_url
    assert_selector "h1", text: "Upload Files"
  end

  test "creating a Upload file" do
    visit upload_files_url
    click_on "New Upload File"

    click_on "Create Upload file"

    assert_text "Upload file was successfully created"
    click_on "Back"
  end

  test "updating a Upload file" do
    visit upload_files_url
    click_on "Edit", match: :first

    click_on "Update Upload file"

    assert_text "Upload file was successfully updated"
    click_on "Back"
  end

  test "destroying a Upload file" do
    visit upload_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Upload file was successfully destroyed"
  end
end
