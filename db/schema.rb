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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130108131836) do

  create_table "authservices", :force => true do |t|
    t.string   "uname"
    t.string   "uemail"
    t.integer  "uid"
    t.string   "fb_token"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.text     "comment_text"
    t.integer  "user_id"
    t.boolean  "is_public"
    t.string   "all_tags"
    t.string   "all_username_tags"
    t.boolean  "is_new_comment"
    t.boolean  "is_active"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "master_categories", :force => true do |t|
    t.string   "category_name"
    t.string   "category_image"
    t.boolean  "is_active"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "master_entities", :force => true do |t|
    t.integer  "master_category_id"
    t.string   "entity_name"
    t.string   "information"
    t.string   "address"
    t.string   "sub_category"
    t.float    "lat"
    t.float    "long"
    t.string   "entity_image"
    t.boolean  "is_active"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "message_details", :force => true do |t|
    t.integer  "message_id"
    t.integer  "receiver_id"
    t.string   "receiver_text"
    t.boolean  "read_status"
    t.boolean  "delete_status"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "parent_thread_id"
    t.text     "text"
    t.date     "send_date"
    t.integer  "sender_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_is"
    t.integer  "user_entity_id"
    t.float    "lat"
    t.float    "long"
    t.boolean  "is_public"
    t.string   "post_comment"
    t.string   "post_image"
    t.boolean  "is_active"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.integer  "rating_count"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friends_user_id"
    t.string   "status"
    t.boolean  "is_active"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "user_categories", :force => true do |t|
    t.integer  "user_id"
    t.integer  "masterCategory_id"
    t.boolean  "is_active"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user_category_relestionships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_user_id"
    t.integer  "user_category_id"
    t.boolean  "is_active"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "is_suggessted"
    t.string   "facebook_id"
    t.string   "bio"
    t.string   "country"
    t.float    "let"
    t.float    "long"
    t.string   "gender"
    t.date     "dob"
    t.string   "website"
    t.string   "mobile"
    t.string   "twitter_id"
    t.string   "is_active"
    t.string   "registration_id"
    t.date     "last_login_time"
    t.string   "password"
    t.string   "profile_picture"
    t.string   "cover_photo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
