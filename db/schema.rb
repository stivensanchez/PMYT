# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150309013455) do

  create_table "comentarios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costs", force: true do |t|
    t.string   "producto"
    t.string   "lote"
    t.string   "cant"
    t.string   "cant001"
    t.string   "cant002"
    t.string   "cant003"
    t.string   "cant004"
    t.string   "cant005"
    t.string   "cant006"
    t.string   "cant007"
    t.string   "und"
    t.string   "und001"
    t.string   "und002"
    t.string   "und003"
    t.string   "und004"
    t.string   "und005"
    t.string   "und006"
    t.string   "und007"
    t.string   "detalle"
    t.string   "detalle001"
    t.string   "detalle002"
    t.string   "detalle003"
    t.string   "detalle004"
    t.string   "detalle005"
    t.string   "detalle006"
    t.string   "detalle007"
    t.string   "vr_unit"
    t.string   "vr_unit001"
    t.string   "vr_unit002"
    t.string   "vr_unit003"
    t.string   "vr_unit004"
    t.string   "vr_unit005"
    t.string   "vr_unit006"
    t.string   "vr_unit007"
    t.string   "vr_total"
    t.string   "vr_total001"
    t.string   "vr_total002"
    t.string   "vr_total003"
    t.string   "vr_total004"
    t.string   "vr_total005"
    t.string   "vr_total006"
    t.string   "vr_total007"
    t.string   "cant2"
    t.string   "cant2001"
    t.string   "cant2002"
    t.string   "cant2003"
    t.string   "cant2004"
    t.string   "cant2005"
    t.string   "cant2006"
    t.string   "cant2007"
    t.string   "und2"
    t.string   "und2001"
    t.string   "und2002"
    t.string   "und2003"
    t.string   "und2004"
    t.string   "und2005"
    t.string   "und2006"
    t.string   "und2007"
    t.string   "detalle2"
    t.string   "detalle2001"
    t.string   "detalle2002"
    t.string   "detalle2003"
    t.string   "detalle2004"
    t.string   "detalle2005"
    t.string   "detalle2006"
    t.string   "detalle2007"
    t.string   "vr_unit2"
    t.string   "vr_unit2001"
    t.string   "vr_unit2002"
    t.string   "vr_unit2003"
    t.string   "vr_unit2004"
    t.string   "vr_unit2005"
    t.string   "vr_unit2006"
    t.string   "vr_unit2007"
    t.string   "vr_total2"
    t.string   "vr_total2001"
    t.string   "vr_total2002"
    t.string   "vr_total2003"
    t.string   "vr_total2004"
    t.string   "vr_total2005"
    t.string   "vr_total2006"
    t.string   "vr_total2007"
    t.string   "t_costo_mat"
    t.string   "t_costo_mano"
    t.string   "cost_to_prod"
    t.string   "cost_uni_prod"
    t.string   "utilidad"
    t.string   "undutilidad"
    t.string   "pre_venta"
    t.string   "margen"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "costs", ["ficha_id"], name: "index_costs_on_ficha_id"

  create_table "developments", force: true do |t|
    t.integer  "operation_id"
    t.string   "sam"
    t.string   "maquina"
    t.string   "calibre_aguja"
    t.string   "ppp"
    t.string   "margen_costura"
    t.string   "guia_accesorios"
    t.text     "observaciones"
    t.integer  "oper_id"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "developments", ["info_id"], name: "index_developments_on_info_id"
  add_index "developments", ["oper_id"], name: "index_developments_on_oper_id"
  add_index "developments", ["operation_id"], name: "index_developments_on_operation_id"

  create_table "ensambles", force: true do |t|
    t.integer  "operation_id"
    t.string   "sam"
    t.string   "maquina"
    t.string   "calibre_aguja"
    t.string   "ppp"
    t.string   "margen_costura"
    t.string   "guia_accesorios"
    t.text     "observaciones"
    t.string   "imagen"
    t.integer  "oper_id"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ensambles", ["info_id"], name: "index_ensambles_on_info_id"
  add_index "ensambles", ["oper_id"], name: "index_ensambles_on_oper_id"
  add_index "ensambles", ["operation_id"], name: "index_ensambles_on_operation_id"

  create_table "fichas", force: true do |t|
    t.string   "referencia"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "nombre"
    t.string   "num_ficha"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["modulo_id"], name: "index_groups_on_modulo_id"

  create_table "infos", force: true do |t|
    t.string   "referencia"
    t.string   "talla"
    t.string   "talla_promedio"
    t.string   "color"
    t.string   "tela"
    t.text     "descripcion"
    t.text     "especificaciones"
    t.text     "estandares"
    t.integer  "modulo_id"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "infos", ["ficha_id"], name: "index_infos_on_ficha_id"
  add_index "infos", ["modulo_id"], name: "index_infos_on_modulo_id"

  create_table "instructors", force: true do |t|
    t.integer  "tipo_doc_id"
    t.string   "numero_doc"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "correo"
    t.string   "telefono"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instructors", ["modulo_id"], name: "index_instructors_on_modulo_id"
  add_index "instructors", ["tipo_doc_id"], name: "index_instructors_on_tipo_doc_id"

  create_table "maquinas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "modulo_id"
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ficha_file_name"
    t.string   "ficha_content_type"
    t.integer  "ficha_file_size"
    t.datetime "ficha_updated_at"
  end

  add_index "maquinas", ["modulo_id"], name: "index_maquinas_on_modulo_id"

  create_table "materials", force: true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.text     "observaciones"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materials", ["info_id"], name: "index_materials_on_info_id"

  create_table "measures", force: true do |t|
    t.string   "medidas"
    t.string   "tolerancia"
    t.string   "cm"
    t.string   "talla"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "measures", ["info_id"], name: "index_measures_on_info_id"

  create_table "modulos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nivelations", force: true do |t|
    t.integer  "oper_id"
    t.integer  "development_id"
    t.string   "tiempo_sam"
    t.string   "tiempo_real"
    t.string   "desempeño"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nivelations", ["development_id"], name: "index_nivelations_on_development_id"
  add_index "nivelations", ["oper_id"], name: "index_nivelations_on_oper_id"

  create_table "operations", force: true do |t|
    t.string   "nombre"
    t.string   "sam"
    t.text     "descripcion"
    t.integer  "maquina_id"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
  end

  add_index "operations", ["maquina_id"], name: "index_operations_on_maquina_id"
  add_index "operations", ["modulo_id"], name: "index_operations_on_modulo_id"

  create_table "opers", force: true do |t|
    t.integer  "tipo_doc_id"
    t.string   "numero_documento"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.string   "telefono"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opers", ["group_id"], name: "index_opers_on_group_id"
  add_index "opers", ["tipo_doc_id"], name: "index_opers_on_tipo_doc_id"

  create_table "prendas", force: true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.text     "observaciones"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prendas", ["info_id"], name: "index_prendas_on_info_id"

  create_table "roles", force: true do |t|
    t.string   "rol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminations", force: true do |t|
    t.integer  "operation_id"
    t.string   "sam"
    t.string   "maquina"
    t.string   "calibre_aguja"
    t.string   "ppp"
    t.string   "margen_costura"
    t.string   "guia_accesorios"
    t.text     "observaciones"
    t.string   "imagen"
    t.integer  "info_id"
    t.integer  "oper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terminations", ["info_id"], name: "index_terminations_on_info_id"
  add_index "terminations", ["oper_id"], name: "index_terminations_on_oper_id"
  add_index "terminations", ["operation_id"], name: "index_terminations_on_operation_id"

  create_table "tipo_docs", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", force: true do |t|
    t.string   "proceso"
    t.text     "descripcion"
    t.string   "ubicacion"
    t.string   "proveedor"
    t.string   "precio"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treatments", ["info_id"], name: "index_treatments_on_info_id"

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
