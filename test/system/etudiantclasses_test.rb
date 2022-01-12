require "application_system_test_case"

class EtudiantclassesTest < ApplicationSystemTestCase
  setup do
    @etudiantclass = etudiantclasses(:one)
  end

  test "visiting the index" do
    visit etudiantclasses_url
    assert_selector "h1", text: "Etudiantclasses"
  end

  test "creating a Etudiantclass" do
    visit etudiantclasses_url
    click_on "New Etudiantclass"

    fill_in "Addresseetud", with: @etudiantclass.addresseEtud
    fill_in "Emailetud", with: @etudiantclass.emailEtud
    fill_in "Naissanceetud", with: @etudiantclass.naissanceEtud
    fill_in "Nometud", with: @etudiantclass.nomEtud
    fill_in "Phoneetud", with: @etudiantclass.phoneEtud
    fill_in "Prenometud", with: @etudiantclass.prenomEtud
    fill_in "Villeetud", with: @etudiantclass.villeEtud
    click_on "Create Etudiantclass"

    assert_text "Etudiantclass was successfully created"
    click_on "Back"
  end

  test "updating a Etudiantclass" do
    visit etudiantclasses_url
    click_on "Edit", match: :first

    fill_in "Addresseetud", with: @etudiantclass.addresseEtud
    fill_in "Emailetud", with: @etudiantclass.emailEtud
    fill_in "Naissanceetud", with: @etudiantclass.naissanceEtud
    fill_in "Nometud", with: @etudiantclass.nomEtud
    fill_in "Phoneetud", with: @etudiantclass.phoneEtud
    fill_in "Prenometud", with: @etudiantclass.prenomEtud
    fill_in "Villeetud", with: @etudiantclass.villeEtud
    click_on "Update Etudiantclass"

    assert_text "Etudiantclass was successfully updated"
    click_on "Back"
  end

  test "destroying a Etudiantclass" do
    visit etudiantclasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Etudiantclass was successfully destroyed"
  end
end
