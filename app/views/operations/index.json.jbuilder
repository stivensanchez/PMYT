json.array!(@operations) do |operation|
  json.extract! operation, :id, :nombre, :descripcion, :maquina_id, :modulo_id
  json.url operation_url(operation, format: :json)
end
