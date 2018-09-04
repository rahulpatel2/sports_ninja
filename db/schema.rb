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

ActiveRecord::Schema.define(version: 20180821183437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.bigint "source_id", null: false, comment: "Reference to the Source"
    t.string "title", null: false, comment: "Title of Article"
    t.string "author", comment: "Author of Article"
    t.string "url", comment: "URL of Article"
    t.string "image_url", comment: "Image URL of Article"
    t.string "description", comment: "Description of Article"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source_id"], name: "articles_source_id_index"
    t.index ["url"], name: "index_articles_on_url", unique: true
  end

  create_table "sources", force: :cascade do |t|
    t.string "name", null: false, comment: "News Source Name"
    t.string "rss_url", null: false, comment: "Url of RSS"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "sources", name: "articles_source_id_fkey"
end
