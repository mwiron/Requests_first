require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { KST: @request.KST, abnahme_teradata: @request.abnahme_teradata, analyse_und_design: @request.analyse_und_design, bezeichnung: @request.bezeichnung, entwickler: @request.entwickler, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachliche_abnahme: @request.fachliche_abnahme, migration: @request.migration, produktion: @request.produktion, request: @request.request, sonderstatus: @request.sonderstatus, tech_freigabe_implementierung: @request.tech_freigabe_implementierung, technische_abnahme: @request.technische_abnahme, verantwortlicherGKV: @request.verantwortlicherGKV, verantwortlicherITSG: @request.verantwortlicherITSG, verantwortlicherTD: @request.verantwortlicherTD, ziel_migration: @request.ziel_migration }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    put :update, id: @request, request: { KST: @request.KST, abnahme_teradata: @request.abnahme_teradata, analyse_und_design: @request.analyse_und_design, bezeichnung: @request.bezeichnung, entwickler: @request.entwickler, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachl_freigabe_implementierung: @request.fachl_freigabe_implementierung, fachliche_abnahme: @request.fachliche_abnahme, migration: @request.migration, produktion: @request.produktion, request: @request.request, sonderstatus: @request.sonderstatus, tech_freigabe_implementierung: @request.tech_freigabe_implementierung, technische_abnahme: @request.technische_abnahme, verantwortlicherGKV: @request.verantwortlicherGKV, verantwortlicherITSG: @request.verantwortlicherITSG, verantwortlicherTD: @request.verantwortlicherTD, ziel_migration: @request.ziel_migration }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
