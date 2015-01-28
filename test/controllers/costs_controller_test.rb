require 'test_helper'

class CostsControllerTest < ActionController::TestCase
  setup do
    @cost = costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost" do
    assert_difference('Cost.count') do
      post :create, cost: { cant2: @cost.cant2, cant: @cost.cant, cost_to_prod: @cost.cost_to_prod, cost_uni_prod: @cost.cost_uni_prod, detalle2: @cost.detalle2, detalle: @cost.detalle, ficha_id: @cost.ficha_id, lote: @cost.lote, producto: @cost.producto, t_costo_mano: @cost.t_costo_mano, t_costo_mat: @cost.t_costo_mat, und2: @cost.und2, und: @cost.und, vr_total2: @cost.vr_total2, vr_total: @cost.vr_total, vr_unit2: @cost.vr_unit2, vr_unit: @cost.vr_unit }
    end

    assert_redirected_to cost_path(assigns(:cost))
  end

  test "should show cost" do
    get :show, id: @cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost
    assert_response :success
  end

  test "should update cost" do
    patch :update, id: @cost, cost: { cant2: @cost.cant2, cant: @cost.cant, cost_to_prod: @cost.cost_to_prod, cost_uni_prod: @cost.cost_uni_prod, detalle2: @cost.detalle2, detalle: @cost.detalle, ficha_id: @cost.ficha_id, lote: @cost.lote, producto: @cost.producto, t_costo_mano: @cost.t_costo_mano, t_costo_mat: @cost.t_costo_mat, und2: @cost.und2, und: @cost.und, vr_total2: @cost.vr_total2, vr_total: @cost.vr_total, vr_unit2: @cost.vr_unit2, vr_unit: @cost.vr_unit }
    assert_redirected_to cost_path(assigns(:cost))
  end

  test "should destroy cost" do
    assert_difference('Cost.count', -1) do
      delete :destroy, id: @cost
    end

    assert_redirected_to costs_path
  end
end
