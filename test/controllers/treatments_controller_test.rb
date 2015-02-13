require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treatment" do
    assert_difference('Treatment.count') do
      post :create, treatment: { descripcion: @treatment.descripcion, info_id: @treatment.info_id, precio: @treatment.precio, proceso: @treatment.proceso, proveedor: @treatment.proveedor, ubicacion: @treatment.ubicacion }
    end

    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should show treatment" do
    get :show, id: @treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treatment
    assert_response :success
  end

  test "should update treatment" do
    patch :update, id: @treatment, treatment: { descripcion: @treatment.descripcion, info_id: @treatment.info_id, precio: @treatment.precio, proceso: @treatment.proceso, proveedor: @treatment.proveedor, ubicacion: @treatment.ubicacion }
    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should destroy treatment" do
    assert_difference('Treatment.count', -1) do
      delete :destroy, id: @treatment
    end

    assert_redirected_to treatments_path
  end
end
