json.array!(@measures) do |measure|
  json.extract! measure, :id, :medidas, :tolerancia, :info_id
  json.url measure_url(measure, format: :json)
end
