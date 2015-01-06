require 'test_helper'

class EnsamblesControllerTest < ActionController::TestCase
  setup do
    @ensamble = ensambles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ensambles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ensamble" do
    assert_difference('Ensamble.count') do
      post :create, ensamble: { calibre_aguja: @ensamble.calibre_aguja, guia_accesorios_string: @ensamble.guia_accesorios_string, maquina: @ensamble.maquina, margen_costura: @ensamble.margen_costura, observaciones: @ensamble.observaciones, operation_id: @ensamble.operation_id, ppp: @ensamble.ppp, xamp: @ensamble.xamp }
    end

    assert_redirected_to ensamble_path(assigns(:ensamble))
  end

  test "should show ensamble" do
    get :show, id: @ensamble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ensamble
    assert_response :success
  end

  test "should update ensamble" do
    patch :update, id: @ensamble, ensamble: { calibre_aguja: @ensamble.calibre_aguja, guia_accesorios_string: @ensamble.guia_accesorios_string, maquina: @ensamble.maquina, margen_costura: @ensamble.margen_costura, observaciones: @ensamble.observaciones, operation_id: @ensamble.operation_id, ppp: @ensamble.ppp, xamp: @ensamble.xamp }
    assert_redirected_to ensamble_path(assigns(:ensamble))
  end

  test "should destroy ensamble" do
    assert_difference('Ensamble.count', -1) do
      delete :destroy, id: @ensamble
    end

    assert_redirected_to ensambles_path
  end
end
