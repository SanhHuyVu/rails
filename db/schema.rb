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

ActiveRecord::Schema.define(version: 2021_04_08_083449) do

  create_table "hangsxes", charset: "utf8mb4", force: :cascade do |t|
    t.integer "idnhasanxuat"
    t.string "tenhang"
    t.text "quocgia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loaithuocs", charset: "utf8mb4", force: :cascade do |t|
    t.integer "idloai"
    t.string "tenloai"
    t.text "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nhacungcaps", charset: "utf8mb4", force: :cascade do |t|
    t.integer "idnhacungcap"
    t.string "tennhacungcap"
    t.string "diachi"
    t.text "thongtindaidien"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thuocs", charset: "utf8mb4", force: :cascade do |t|
    t.string "tenthuoc"
    t.string "ghichu"
    t.text "congdung"
    t.string "idnhasanxuat"
    t.string "idnhacungcap"
    t.integer "idloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
