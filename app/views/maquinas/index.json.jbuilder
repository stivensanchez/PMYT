json.array!(@maquinas) do |maquina|
  json.extract! maquina, :id, :nombre, :descripcion, :modulo_id
  json.url maquina_url(maquina, format: :json)
end
