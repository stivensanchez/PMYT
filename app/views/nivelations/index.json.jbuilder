json.array!(@nivelations) do |nivelation|
  json.extract! nivelation, :id, :oper_id, :desempeño, :comentario
  json.url nivelation_url(nivelation, format: :json)
end
