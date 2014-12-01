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

ActiveRecord::Schema.define(version: 20141201205316) do

  create_table "groups", force: true do |t|
    t.string   "nombre"
    t.string   "num_ficha"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["modulo_id"], name: "index_groups_on_modulo_id"

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

  create_table "modulos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operations", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "maquina_id"
    t.integer  "modulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "tipo_docs", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
