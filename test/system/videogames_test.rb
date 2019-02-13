require "application_system_test_case"

class VideogamesTest < ApplicationSystemTestCase
  setup do
    @videogame = videogames(:one)
  end

  test "visiting the index" do
    visit videogames_url
    assert_selector "h1", text: "Videogames"
  end

  test "creating a Videogame" do
    visit videogames_url
    click_on "New Videogame"

    fill_in "Condition", with: @videogame.condition
    fill_in "Platform", with: @videogame.platform
    fill_in "Publisher", with: @videogame.publisher
    fill_in "Title", with: @videogame.title
    fill_in "Upc", with: @videogame.upc
    fill_in "Year", with: @videogame.year
    click_on "Create Videogame"

    assert_text "Videogame was successfully created"
    click_on "Back"
  end

  test "updating a Videogame" do
    visit videogames_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @videogame.condition
    fill_in "Platform", with: @videogame.platform
    fill_in "Publisher", with: @videogame.publisher
    fill_in "Title", with: @videogame.title
    fill_in "Upc", with: @videogame.upc
    fill_in "Year", with: @videogame.year
    click_on "Update Videogame"

    assert_text "Videogame was successfully updated"
    click_on "Back"
  end

  test "destroying a Videogame" do
    visit videogames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Videogame was successfully destroyed"
  end
end
