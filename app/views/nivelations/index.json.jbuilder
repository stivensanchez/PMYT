json.array!(@nivelations) do |nivelation|
  json.extract! nivelation, :id, :sam, :tiempo_real, :desempeño, :comentario, :oper_id, :development_id, :ensamble_id, :termination_id
  json.url nivelation_url(nivelation, format: :json)
end
