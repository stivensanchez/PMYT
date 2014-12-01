json.array!(@opers) do |oper|
  json.extract! oper, :id, :tipo_doc_id, :numero_documento, :nombre, :apellido, :correo, :telefono, :group_id
  json.url oper_url(oper, format: :json)
end
