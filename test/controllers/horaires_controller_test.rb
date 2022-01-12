require "test_helper"

class HorairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horaire = horaires(:one)
  end

  test "should get index" do
    get horaires_url
    assert_response :success
  end

  test "should get new" do
    get new_horaire_url
    assert_response :success
  end

  test "should create horaire" do
    assert_difference('Horaire.count') do
      post horaires_url, params: { horaire: { cour_id: @horaire.cour_id, heure_id: @horaire.heure_id, horcours: @horaire.horcours, horheure: @horaire.horheure, horjour: @horaire.horjour, horsalle: @horaire.horsalle, jour_id: @horaire.jour_id, salle_id: @horaire.salle_id, sessionencour_id: @horaire.sessionencour_id } }
    end

    assert_redirected_to horaire_url(Horaire.last)
  end

  test "should show horaire" do
    get horaire_url(@horaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_horaire_url(@horaire)
    assert_response :success
  end

  test "should update horaire" do
    patch horaire_url(@horaire), params: { horaire: { cour_id: @horaire.cour_id, heure_id: @horaire.heure_id, horcours: @horaire.horcours, horheure: @horaire.horheure, horjour: @horaire.horjour, horsalle: @horaire.horsalle, jour_id: @horaire.jour_id, salle_id: @horaire.salle_id, sessionencour_id: @horaire.sessionencour_id } }
    assert_redirected_to horaire_url(@horaire)
  end

  test "should destroy horaire" do
    assert_difference('Horaire.count', -1) do
      delete horaire_url(@horaire)
    end

    assert_redirected_to horaires_url
  end
end
