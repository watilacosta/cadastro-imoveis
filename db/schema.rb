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

ActiveRecord::Schema.define(version: 2020_02_05_214336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "imoveis", force: :cascade do |t|
    t.bigint "proprietario_id"
    t.string "endereco"
    t.decimal "area_terreno"
    t.decimal "area_construida"
    t.decimal "area_total"
    t.decimal "aliquota"
    t.decimal "valor_venal_terreno"
    t.decimal "valor_venal_construcao"
    t.decimal "valor_venal_total"
    t.decimal "aliquota_aplicada"
    t.decimal "valor_imposto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proprietario_id"], name: "index_imoveis_on_proprietario_id"
  end

  create_table "proprietarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nome"
    t.string "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_proprietarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_proprietarios_on_reset_password_token", unique: true
  end

  add_foreign_key "imoveis", "proprietarios"
end
