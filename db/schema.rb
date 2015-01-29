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

ActiveRecord::Schema.define(version: 20150129204902) do

  create_table "comentarios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costs", force: true do |t|
    t.string   "producto"
    t.string   "lote"
    t.string   "cant"
    t.string   "und"
    t.string   "detalle"
    t.string   "vr_unit"
    t.string   "vr_total"
    t.string   "cant2"
    t.string   "und2"
    t.string   "detalle2"
    t.string   "vr_unit2"
    t.string   "vr_total2"
    t.string   "t_costo_mat"
    t.string   "t_costo_mano"
    t.string   "cost_to_prod"
    t.string   "cost_uni_prod"
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
    t.string   "imagen"
    t.integer  "info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "materials", force: true do |t|
    t.string   "nombre"
    t.string   "cantidad"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "operation_id"
    t.string   "desempeño"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nivelations", ["oper_id"], name: "index_nivelations_on_oper_id"
  add_index "nivelations", ["operation_id"], name: "index_nivelations_on_operation_id"

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
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_docs", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
