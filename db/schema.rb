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

ActiveRecord::Schema.define(version: 20150213144142) do

  create_table "costs", force: true do |t|
    t.string   "producto"
    t.string   "lote"
    t.integer  "cant"
    t.integer  "und"
    t.string   "detalle"
    t.float    "vr_unit"
    t.float    "vr_total"
    t.integer  "cant2"
    t.integer  "und2"
    t.string   "detalle2"
    t.float    "vr_unit2"
    t.float    "vr_total2"
    t.float    "t_costo_mat"
    t.float    "t_costo_mano"
    t.float    "cost_to_prod"
    t.float    "cost_uni_prod"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cant001"
    t.integer  "cant002"
    t.integer  "cant003"
    t.integer  "cant004"
    t.integer  "cant005"
    t.integer  "cant006"
    t.integer  "cant007"
    t.integer  "cant2001"
    t.integer  "cant2002"
    t.integer  "cant2003"
    t.integer  "cant2004"
    t.integer  "cant2005"
    t.integer  "cant2006"
    t.integer  "cant2007"
    t.integer  "und001"
    t.integer  "und002"
    t.integer  "und003"
    t.integer  "und004"
    t.integer  "und005"
    t.integer  "und006"
    t.integer  "und007"
    t.integer  "und2001"
    t.integer  "und2002"
    t.integer  "und2003"
    t.integer  "und2004"
    t.integer  "und2005"
    t.integer  "und2006"
    t.integer  "und2007"
    t.string   "detalle001",    limit: nil
    t.string   "detalle002",    limit: nil
    t.string   "detalle003",    limit: nil
    t.string   "detalle004",    limit: nil
    t.string   "detalle005",    limit: nil
    t.string   "detalle006",    limit: nil
    t.string   "detalle007",    limit: nil
    t.string   "detalle2001",   limit: nil
    t.string   "detalle2002",   limit: nil
    t.string   "detalle2003",   limit: nil
    t.string   "detalle2004",   limit: nil
    t.string   "detalle2005",   limit: nil
    t.string   "detalle2006",   limit: nil
    t.string   "detalle2007",   limit: nil
    t.float    "vr_unit001"
    t.float    "vr_unit002"
    t.float    "vr_unit003"
    t.float    "vr_unit004"
    t.float    "vr_unit005"
    t.float    "vr_unit006"
    t.float    "vr_unit007"
    t.float    "vr_unit2001"
    t.float    "vr_unit2002"
    t.float    "vr_unit2003"
    t.float    "vr_unit2004"
    t.float    "vr_unit2005"
    t.float    "vr_unit2006"
    t.float    "vr_unit2007"
    t.float    "vr_total001"
    t.float    "vr_total002"
    t.float    "vr_total003"
    t.float    "vr_total004"
    t.float    "vr_total005"
    t.float    "vr_total006"
    t.float    "vr_total007"
    t.float    "vr_total2001"
    t.float    "vr_total2002"
    t.float    "vr_total2003"
    t.float    "vr_total2004"
    t.float    "vr_total2005"
    t.float    "vr_total2006"
    t.float    "vr_total2007"
  end

  create_table "developments", force: true do |t|
    t.integer  "operation_id"
    t.string   "sam"
    t.string   "maquina"
    t.string   "calibre_aguja"
    t.string   "ppp"
    t.string   "margen_costura"
    t.string   "guia_accesorios"
    t.text     "observaciones"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "oper_id"
  end

  create_table "ensambles", force: true do |t|
    t.integer  "operation_id"
    t.string   "sam"
    t.string   "maquina"
    t.string   "calibre_aguja"
    t.string   "ppp"
    t.string   "margen_costura"
    t.string   "guia_accesorios"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "info_id"
    t.integer  "oper_id"
  end

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

  create_table "infos", force: true do |t|
    t.string   "referencia"
    t.string   "talla"
    t.string   "talla_promedio"
    t.string   "color"
    t.string   "tela"
    t.text     "descripcion"
    t.text     "especificaciones"
    t.integer  "modulo_id"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.text     "estandares"
  end

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

  create_table "maquinas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cantidad"
  end

  create_table "materials", force: true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "info_id"
  end

  create_table "measures", force: true do |t|
    t.string   "medidas"
    t.string   "tolerancia"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modulos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nivelations", force: true do |t|
    t.integer  "oper_id"
    t.integer  "development_id"
    t.string   "desempeño"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "prendas", force: true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.text     "observaciones"
    t.integer  "info_id"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "info_id"
    t.integer  "oper_id"
  end

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

end
