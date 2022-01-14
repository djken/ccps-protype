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

ActiveRecord::Schema.define(version: 2022_01_13_184440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classegroups", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.float "devoirs"
    t.float "intra"
    t.float "final"
    t.float "total"
    t.string "remarques"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "classes", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.float "devoirs"
    t.float "intra"
    t.float "final"
    t.float "total"
    t.string "remarques"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cours", force: :cascade do |t|
    t.string "nomcours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "etudiantclass_horaires", force: :cascade do |t|
    t.bigint "horaire_id", null: false
    t.bigint "etudiantclass_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["etudiantclass_id"], name: "index_etudiantclass_horaires_on_etudiantclass_id"
    t.index ["horaire_id"], name: "index_etudiantclass_horaires_on_horaire_id"
  end

  create_table "etudiantclasses", force: :cascade do |t|
    t.string "nomEtud"
    t.string "prenomEtud"
    t.datetime "naissanceEtud"
    t.string "phoneEtud"
    t.string "emailEtud"
    t.string "addresseEtud"
    t.string "villeEtud"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "horaireEtud"
  end

  create_table "heures", force: :cascade do |t|
    t.string "heurecours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "horaires", force: :cascade do |t|
    t.bigint "sessionencour_id", null: false
    t.bigint "jour_id", null: false
    t.bigint "cour_id", null: false
    t.bigint "heure_id", null: false
    t.bigint "salle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cour_id"], name: "index_horaires_on_cour_id"
    t.index ["heure_id"], name: "index_horaires_on_heure_id"
    t.index ["jour_id"], name: "index_horaires_on_jour_id"
    t.index ["salle_id"], name: "index_horaires_on_salle_id"
    t.index ["sessionencour_id"], name: "index_horaires_on_sessionencour_id"
  end

  create_table "jours", force: :cascade do |t|
    t.string "nomjour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "salles", force: :cascade do |t|
    t.string "nomsalle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessionencours", force: :cascade do |t|
    t.boolean "etatsession"
    t.date "datedebut"
    t.date "datefin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "etudiantclass_horaires", "etudiantclasses"
  add_foreign_key "etudiantclass_horaires", "horaires"
  add_foreign_key "horaires", "cours"
  add_foreign_key "horaires", "heures"
  add_foreign_key "horaires", "jours"
  add_foreign_key "horaires", "salles"
  add_foreign_key "horaires", "sessionencours"
end
