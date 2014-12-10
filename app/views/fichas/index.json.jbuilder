json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :referencia, :nombre
  json.url ficha_url(ficha, format: :json)
end
