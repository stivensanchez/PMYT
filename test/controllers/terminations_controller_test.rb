require 'test_helper'

class TerminationsControllerTest < ActionController::TestCase
  setup do
    @termination = terminations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create termination" do
    assert_difference('Termination.count') do
      post :create, termination: { calibre_aguja: @termination.calibre_aguja, guia_accesorios_string: @termination.guia_accesorios_string, maquina: @termination.maquina, margen_costura: @termination.margen_costura, observaciones: @termination.observaciones, operation_id: @termination.operation_id, ppp: @termination.ppp, xamp: @termination.xamp }
    end

    assert_redirected_to termination_path(assigns(:termination))
  end

  test "should show termination" do
    get :show, id: @termination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @termination
    assert_response :success
  end

  test "should update termination" do
    patch :update, id: @termination, termination: { calibre_aguja: @termination.calibre_aguja, guia_accesorios_string: @termination.guia_accesorios_string, maquina: @termination.maquina, margen_costura: @termination.margen_costura, observaciones: @termination.observaciones, operation_id: @termination.operation_id, ppp: @termination.ppp, xamp: @termination.xamp }
    assert_redirected_to termination_path(assigns(:termination))
  end

  test "should destroy termination" do
    assert_difference('Termination.count', -1) do
      delete :destroy, id: @termination
    end

    assert_redirected_to terminations_path
  end
end
