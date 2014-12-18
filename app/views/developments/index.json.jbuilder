json.array!(@developments) do |development|
  json.extract! development, :id, :operation_id, :maquina, :calibre_aguja, :ppp, :margen_costura, :guia_accesorios, :observaciones, :info_id
  json.url development_url(development, format: :json)
end
