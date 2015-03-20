json.array!(@manuals) do |manual|
  json.extract! manual, :id, :administrador, :instructor, :operaria
  json.url manual_url(manual, format: :json)
end
