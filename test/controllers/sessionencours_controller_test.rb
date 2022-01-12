require "test_helper"

class SessionencoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sessionencour = sessionencours(:one)
  end

  test "should get index" do
    get sessionencours_url
    assert_response :success
  end

  test "should get new" do
    get new_sessionencour_url
    assert_response :success
  end

  test "should create sessionencour" do
    assert_difference('Sessionencour.count') do
      post sessionencours_url, params: { sessionencour: { datedebut: @sessionencour.datedebut, datefin: @sessionencour.datefin, etatsession: @sessionencour.etatsession } }
    end

    assert_redirected_to sessionencour_url(Sessionencour.last)
  end

  test "should show sessionencour" do
    get sessionencour_url(@sessionencour)
    assert_response :success
  end

  test "should get edit" do
    get edit_sessionencour_url(@sessionencour)
    assert_response :success
  end

  test "should update sessionencour" do
    patch sessionencour_url(@sessionencour), params: { sessionencour: { datedebut: @sessionencour.datedebut, datefin: @sessionencour.datefin, etatsession: @sessionencour.etatsession } }
    assert_redirected_to sessionencour_url(@sessionencour)
  end

  test "should destroy sessionencour" do
    assert_difference('Sessionencour.count', -1) do
      delete sessionencour_url(@sessionencour)
    end

    assert_redirected_to sessionencours_url
  end
end
