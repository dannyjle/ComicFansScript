require "application_system_test_case"

class ComicsTest < ApplicationSystemTestCase
  setup do
    @comic = comics(:one)
  end

  test "visiting the index" do
    visit comics_url
    assert_selector "h1", text: "Comics"
  end

  test "creating a Comic" do
    visit comics_url
    click_on "New Comic"

    fill_in "Creator", with: @comic.creator
    fill_in "Name", with: @comic.name
    fill_in "Number", with: @comic.number
    fill_in "Publisher", with: @comic.publisher
    fill_in "Volume", with: @comic.volume
    click_on "Create Comic"

    assert_text "Comic was successfully created"
    click_on "Back"
  end

  test "updating a Comic" do
    visit comics_url
    click_on "Edit", match: :first

    fill_in "Creator", with: @comic.creator
    fill_in "Name", with: @comic.name
    fill_in "Number", with: @comic.number
    fill_in "Publisher", with: @comic.publisher
    fill_in "Volume", with: @comic.volume
    click_on "Update Comic"

    assert_text "Comic was successfully updated"
    click_on "Back"
  end

  test "destroying a Comic" do
    visit comics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comic was successfully destroyed"
  end
end
