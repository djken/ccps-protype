require "application_system_test_case"

class HorairesTest < ApplicationSystemTestCase
  setup do
    @horaire = horaires(:one)
  end

  test "visiting the index" do
    visit horaires_url
    assert_selector "h1", text: "Horaires"
  end

  test "creating a Horaire" do
    visit horaires_url
    click_on "New Horaire"

    fill_in "Cour", with: @horaire.cour_id
    fill_in "Heure", with: @horaire.heure_id
    fill_in "Horcours", with: @horaire.horcours
    fill_in "Horheure", with: @horaire.horheure
    fill_in "Horjour", with: @horaire.horjour
    fill_in "Horsalle", with: @horaire.horsalle
    fill_in "Jour", with: @horaire.jour_id
    fill_in "Salle", with: @horaire.salle_id
    fill_in "Sessionencour", with: @horaire.sessionencour_id
    click_on "Create Horaire"

    assert_text "Horaire was successfully created"
    click_on "Back"
  end

  test "updating a Horaire" do
    visit horaires_url
    click_on "Edit", match: :first

    fill_in "Cour", with: @horaire.cour_id
    fill_in "Heure", with: @horaire.heure_id
    fill_in "Horcours", with: @horaire.horcours
    fill_in "Horheure", with: @horaire.horheure
    fill_in "Horjour", with: @horaire.horjour
    fill_in "Horsalle", with: @horaire.horsalle
    fill_in "Jour", with: @horaire.jour_id
    fill_in "Salle", with: @horaire.salle_id
    fill_in "Sessionencour", with: @horaire.sessionencour_id
    click_on "Update Horaire"

    assert_text "Horaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Horaire" do
    visit horaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Horaire was successfully destroyed"
  end
end
