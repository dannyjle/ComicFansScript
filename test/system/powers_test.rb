require "application_system_test_case"

class PowersTest < ApplicationSystemTestCase
  setup do
    @power = powers(:one)
  end

  test "visiting the index" do
    visit powers_url
    assert_selector "h1", text: "Powers"
  end

  test "creating a Power" do
    visit powers_url
    click_on "New Power"

    fill_in "Category", with: @power.category
    fill_in "Description", with: @power.description
    fill_in "Known users", with: @power.known_users
    fill_in "Limitations", with: @power.limitations
    fill_in "Name", with: @power.name
    click_on "Create Power"

    assert_text "Power was successfully created"
    click_on "Back"
  end

  test "updating a Power" do
    visit powers_url
    click_on "Edit", match: :first

    fill_in "Category", with: @power.category
    fill_in "Description", with: @power.description
    fill_in "Known users", with: @power.known_users
    fill_in "Limitations", with: @power.limitations
    fill_in "Name", with: @power.name
    click_on "Update Power"

    assert_text "Power was successfully updated"
    click_on "Back"
  end

  test "destroying a Power" do
    visit powers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Power was successfully destroyed"
  end
end
