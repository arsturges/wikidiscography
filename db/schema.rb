# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100508072447) do

  create_table "artists", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "display_name"
    t.integer  "skill_id"
    t.date     "birth"
    t.date     "death"
    t.string   "birth_place"
    t.string   "death_place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "country"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", :force => true do |t|
    t.string   "label"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", :force => true do |t|
    t.string   "medium"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_types", :force => true do |t|
    t.string   "session_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.date     "session_date"
    t.boolean  "circa"
    t.string   "text_date"
    t.string   "title"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "session_type_id"
    t.string   "venue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "skill"
    t.string   "abbreviation"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_forms", :force => true do |t|
    t.string   "song_form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", :force => true do |t|
    t.string   "title"
    t.integer  "song_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "state"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
