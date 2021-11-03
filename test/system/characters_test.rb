require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Alter ego", with: @character.alter_ego
    fill_in "Bio", with: @character.bio
    fill_in "Comic", with: @character.comic_id
    fill_in "First appearance", with: @character.first_appearance
    fill_in "Location", with: @character.location
    fill_in "Name", with: @character.name
    fill_in "Power", with: @character.power_id
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Alter ego", with: @character.alter_ego
    fill_in "Bio", with: @character.bio
    fill_in "Comic", with: @character.comic_id
    fill_in "First appearance", with: @character.first_appearance
    fill_in "Location", with: @character.location
    fill_in "Name", with: @character.name
    fill_in "Power", with: @character.power_id
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
