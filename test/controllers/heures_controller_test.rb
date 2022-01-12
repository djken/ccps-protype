require "test_helper"

class HeuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heure = heures(:one)
  end

  test "should get index" do
    get heures_url
    assert_response :success
  end

  test "should get new" do
    get new_heure_url
    assert_response :success
  end

  test "should create heure" do
    assert_difference('Heure.count') do
      post heures_url, params: { heure: { heurecours: @heure.heurecours } }
    end

    assert_redirected_to heure_url(Heure.last)
  end

  test "should show heure" do
    get heure_url(@heure)
    assert_response :success
  end

  test "should get edit" do
    get edit_heure_url(@heure)
    assert_response :success
  end

  test "should update heure" do
    patch heure_url(@heure), params: { heure: { heurecours: @heure.heurecours } }
    assert_redirected_to heure_url(@heure)
  end

  test "should destroy heure" do
    assert_difference('Heure.count', -1) do
      delete heure_url(@heure)
    end

    assert_redirected_to heures_url
  end
end
