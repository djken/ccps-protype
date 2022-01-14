require "test_helper"

class ClassegroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classegroup = classegroups(:one)
  end

  test "should get index" do
    get classegroups_url
    assert_response :success
  end

  test "should get new" do
    get new_classegroup_url
    assert_response :success
  end

  test "should create classegroup" do
    assert_difference('Classegroup.count') do
      post classegroups_url, params: { classegroup: { devoirs: @classegroup.devoirs, final: @classegroup.final, intra: @classegroup.intra, nom: @classegroup.nom, prenom: @classegroup.prenom, remarques: @classegroup.remarques, total: @classegroup.total } }
    end

    assert_redirected_to classegroup_url(Classegroup.last)
  end

  test "should show classegroup" do
    get classegroup_url(@classegroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_classegroup_url(@classegroup)
    assert_response :success
  end

  test "should update classegroup" do
    patch classegroup_url(@classegroup), params: { classegroup: { devoirs: @classegroup.devoirs, final: @classegroup.final, intra: @classegroup.intra, nom: @classegroup.nom, prenom: @classegroup.prenom, remarques: @classegroup.remarques, total: @classegroup.total } }
    assert_redirected_to classegroup_url(@classegroup)
  end

  test "should destroy classegroup" do
    assert_difference('Classegroup.count', -1) do
      delete classegroup_url(@classegroup)
    end

    assert_redirected_to classegroups_url
  end
end
