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

ActiveRecord::Schema[7.0].define(version: 2023_12_13_080924) do
  create_table "admin_users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diet_plans", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "recommended_calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "breakfast_calories"
    t.integer "lunch_calories"
    t.integer "snacks_calories"
    t.integer "dinner_calories"
    t.integer "carbohydrates"
    t.integer "proteins"
    t.integer "fats"
    t.integer "nutrition_expert_id", default: 1
    t.index ["nutrition_expert_id"], name: "index_diet_plans_on_nutrition_expert_id"
  end

  create_table "entries", force: :cascade do |t|
    t.string "meal_type"
    t.integer "calories"
    t.integer "carbohydrates"
    t.integer "proteins"
    t.integer "fats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 11030fc831fa29faea48875aadc936640e718551
  create_table "health_experts", force: :cascade do |t|
    t.string "name"
    t.string "contact_info"
    t.string "organization"
    t.string "address"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
=======
>>>>>>> 6af6cc4a62e120ffdefec049a13694b363eed827
>>>>>>> 11030fc831fa29faea48875aadc936640e718551
  create_table "nutrition_experts", force: :cascade do |t|
    t.string "name"
    t.string "expertise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "meal_category"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "age"
    t.float "weight"
    t.float "height"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "diet_plans", "nutrition_experts"
end
