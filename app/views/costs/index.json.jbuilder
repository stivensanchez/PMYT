json.array!(@costs) do |cost|
  json.extract! cost, :id, :producto, :lote, :cant, :und, :detalle, :vr_unit, :vr_total, :cant2, :und2, :detalle2, :vr_unit2, :vr_total2, :t_costo_mat, :t_costo_mano, :cost_to_prod, :cost_uni_prod, :ficha_id
  json.url cost_url(cost, format: :json)
end
