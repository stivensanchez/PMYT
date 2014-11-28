json.array!(@groups) do |group|
  json.extract! group, :id, :nombre, :num_ficha, :modulo_id
  json.url group_url(group, format: :json)
end
