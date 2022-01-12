require "application_system_test_case"

class SessionencoursTest < ApplicationSystemTestCase
  setup do
    @sessionencour = sessionencours(:one)
  end

  test "visiting the index" do
    visit sessionencours_url
    assert_selector "h1", text: "Sessionencours"
  end

  test "creating a Sessionencour" do
    visit sessionencours_url
    click_on "New Sessionencour"

    fill_in "Datedebut", with: @sessionencour.datedebut
    fill_in "Datefin", with: @sessionencour.datefin
    check "Etatsession" if @sessionencour.etatsession
    click_on "Create Sessionencour"

    assert_text "Sessionencour was successfully created"
    click_on "Back"
  end

  test "updating a Sessionencour" do
    visit sessionencours_url
    click_on "Edit", match: :first

    fill_in "Datedebut", with: @sessionencour.datedebut
    fill_in "Datefin", with: @sessionencour.datefin
    check "Etatsession" if @sessionencour.etatsession
    click_on "Update Sessionencour"

    assert_text "Sessionencour was successfully updated"
    click_on "Back"
  end

  test "destroying a Sessionencour" do
    visit sessionencours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sessionencour was successfully destroyed"
  end
end
