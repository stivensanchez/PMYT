json.array!(@terminations) do |termination|
  json.extract! termination, :id, :operation_id, :xamp, :maquina, :calibre_aguja, :ppp, :margen_costura, :guia_accesorios_string, :observaciones
  json.url termination_url(termination, format: :json)
end
