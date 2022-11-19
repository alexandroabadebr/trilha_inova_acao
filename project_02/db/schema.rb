# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_19_152406) do
  create_table "ators", force: :cascade do |t|
    t.string "nome"
    t.date "ano_nascimento"
    t.string "email"
    t.integer "Ator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Ator_id"], name: "index_ators_on_Ator_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "comentario"
    t.integer "Filme_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Filme_id"], name: "index_comentarios_on_Filme_id"
  end

  create_table "filmes", force: :cascade do |t|
    t.string "titulo"
    t.date "ano_lancamento"
    t.string "alenco_atores"
    t.text "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ators", "Ators"
  add_foreign_key "comentarios", "Filmes"
end
