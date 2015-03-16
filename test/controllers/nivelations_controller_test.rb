require 'test_helper'

class NivelationsControllerTest < ActionController::TestCase
  setup do
    @nivelation = nivelations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nivelations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nivelation" do
    assert_difference('Nivelation.count') do
      post :create, nivelation: { comentario: @nivelation.comentario, desempeño: @nivelation.desempeño, development_id: @nivelation.development_id, ensamble_id: @nivelation.ensamble_id, oper_id: @nivelation.oper_id, sam: @nivelation.sam, termination_id: @nivelation.termination_id, tiempo_real: @nivelation.tiempo_real }
    end

    assert_redirected_to nivelation_path(assigns(:nivelation))
  end

  test "should show nivelation" do
    get :show, id: @nivelation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nivelation
    assert_response :success
  end

  test "should update nivelation" do
    patch :update, id: @nivelation, nivelation: { comentario: @nivelation.comentario, desempeño: @nivelation.desempeño, development_id: @nivelation.development_id, ensamble_id: @nivelation.ensamble_id, oper_id: @nivelation.oper_id, sam: @nivelation.sam, termination_id: @nivelation.termination_id, tiempo_real: @nivelation.tiempo_real }
    assert_redirected_to nivelation_path(assigns(:nivelation))
  end

  test "should destroy nivelation" do
    assert_difference('Nivelation.count', -1) do
      delete :destroy, id: @nivelation
    end

    assert_redirected_to nivelations_path
  end
end
