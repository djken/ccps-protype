require "application_system_test_case"

class ClassegroupsTest < ApplicationSystemTestCase
  setup do
    @classegroup = classegroups(:one)
  end

  test "visiting the index" do
    visit classegroups_url
    assert_selector "h1", text: "Classegroups"
  end

  test "creating a Classegroup" do
    visit classegroups_url
    click_on "New Classegroup"

    fill_in "Devoirs", with: @classegroup.devoirs
    fill_in "Final", with: @classegroup.final
    fill_in "Intra", with: @classegroup.intra
    fill_in "Nom", with: @classegroup.nom
    fill_in "Prenom", with: @classegroup.prenom
    fill_in "Remarques", with: @classegroup.remarques
    fill_in "Total", with: @classegroup.total
    click_on "Create Classegroup"

    assert_text "Classegroup was successfully created"
    click_on "Back"
  end

  test "updating a Classegroup" do
    visit classegroups_url
    click_on "Edit", match: :first

    fill_in "Devoirs", with: @classegroup.devoirs
    fill_in "Final", with: @classegroup.final
    fill_in "Intra", with: @classegroup.intra
    fill_in "Nom", with: @classegroup.nom
    fill_in "Prenom", with: @classegroup.prenom
    fill_in "Remarques", with: @classegroup.remarques
    fill_in "Total", with: @classegroup.total
    click_on "Update Classegroup"

    assert_text "Classegroup was successfully updated"
    click_on "Back"
  end

  test "destroying a Classegroup" do
    visit classegroups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classegroup was successfully destroyed"
  end
end
