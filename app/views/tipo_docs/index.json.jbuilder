json.array!(@tipo_docs) do |tipo_doc|
  json.extract! tipo_doc, :id, :nombre, :descripcion
  json.url tipo_doc_url(tipo_doc, format: :json)
end
