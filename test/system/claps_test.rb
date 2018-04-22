require "application_system_test_case"

class ClapsTest < ApplicationSystemTestCase
  setup do
    @clap = claps(:one)
  end

  test "visiting the index" do
    visit claps_url
    assert_selector "h1", text: "Claps"
  end

  test "creating a Clap" do
    visit claps_url
    click_on "New Clap"

    fill_in "Idea", with: @clap.idea_id
    fill_in "User Name", with: @clap.user_name
    click_on "Create Clap"

    assert_text "Clap was successfully created"
    click_on "Back"
  end

  test "updating a Clap" do
    visit claps_url
    click_on "Edit", match: :first

    fill_in "Idea", with: @clap.idea_id
    fill_in "User Name", with: @clap.user_name
    click_on "Update Clap"

    assert_text "Clap was successfully updated"
    click_on "Back"
  end

  test "destroying a Clap" do
    visit claps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clap was successfully destroyed"
  end
end
