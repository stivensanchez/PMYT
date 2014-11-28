json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :tipo_doc_id, :numero_doc, :nombres, :apellidos, :correo, :telefono, :modulo_id
  json.url instructor_url(instructor, format: :json)
end
