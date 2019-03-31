require "application_system_test_case"

class ShoppintLsitsTest < ApplicationSystemTestCase
  setup do
    @shoppint_lsit = shoppint_lsits(:one)
  end

  test "visiting the index" do
    visit shoppint_lsits_url
    assert_selector "h1", text: "Shoppint Lsits"
  end

  test "creating a Shoppint lsit" do
    visit shoppint_lsits_url
    click_on "New Shoppint Lsit"

    fill_in "List name", with: @shoppint_lsit.list_name
    click_on "Create Shoppint lsit"

    assert_text "Shoppint lsit was successfully created"
    click_on "Back"
  end

  test "updating a Shoppint lsit" do
    visit shoppint_lsits_url
    click_on "Edit", match: :first

    fill_in "List name", with: @shoppint_lsit.list_name
    click_on "Update Shoppint lsit"

    assert_text "Shoppint lsit was successfully updated"
    click_on "Back"
  end

  test "destroying a Shoppint lsit" do
    visit shoppint_lsits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shoppint lsit was successfully destroyed"
  end
end
