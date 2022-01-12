require "test_helper"

class EtudiantclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etudiantclass = etudiantclasses(:one)
  end

  test "should get index" do
    get etudiantclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_etudiantclass_url
    assert_response :success
  end

  test "should create etudiantclass" do
    assert_difference('Etudiantclass.count') do
      post etudiantclasses_url, params: { etudiantclass: { addresseEtud: @etudiantclass.addresseEtud, emailEtud: @etudiantclass.emailEtud, naissanceEtud: @etudiantclass.naissanceEtud, nomEtud: @etudiantclass.nomEtud, phoneEtud: @etudiantclass.phoneEtud, prenomEtud: @etudiantclass.prenomEtud, villeEtud: @etudiantclass.villeEtud } }
    end

    assert_redirected_to etudiantclass_url(Etudiantclass.last)
  end

  test "should show etudiantclass" do
    get etudiantclass_url(@etudiantclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_etudiantclass_url(@etudiantclass)
    assert_response :success
  end

  test "should update etudiantclass" do
    patch etudiantclass_url(@etudiantclass), params: { etudiantclass: { addresseEtud: @etudiantclass.addresseEtud, emailEtud: @etudiantclass.emailEtud, naissanceEtud: @etudiantclass.naissanceEtud, nomEtud: @etudiantclass.nomEtud, phoneEtud: @etudiantclass.phoneEtud, prenomEtud: @etudiantclass.prenomEtud, villeEtud: @etudiantclass.villeEtud } }
    assert_redirected_to etudiantclass_url(@etudiantclass)
  end

  test "should destroy etudiantclass" do
    assert_difference('Etudiantclass.count', -1) do
      delete etudiantclass_url(@etudiantclass)
    end

    assert_redirected_to etudiantclasses_url
  end
end
