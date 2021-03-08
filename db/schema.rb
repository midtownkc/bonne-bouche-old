# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_06_033903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grocery_sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "description"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "grocery_section_id", null: false
    t.index ["grocery_section_id"], name: "index_ingredients_on_grocery_section_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.integer "prep_time_hours"
    t.integer "prep_time_minutes"
    t.integer "cook_time_hours"
    t.integer "cook_time_minutes"
    t.string "serving_size"
    t.string "servings"
    t.text "instructions"
    t.string "instruction_video"
    t.string "style"
    t.text "notes"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingredients", "grocery_sections"
  add_foreign_key "ingredients", "recipes"
end
