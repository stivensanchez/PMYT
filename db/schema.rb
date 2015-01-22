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

ActiveRecord::Schema.define(version: 20150115213916) do

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

  add_index "developments", ["info_id"], name: "index_developments_on_info_id"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "maquinas", ["modulo_id"], name: "index_maquinas_on_modulo_id"

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

  add_index "measures", ["info_id"], name: "index_measures_on_info_id"

  create_table "modulos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
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

  add_index "terminations", ["operation_id"], name: "index_terminations_on_operation_id"

  create_table "tipo_docs", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
