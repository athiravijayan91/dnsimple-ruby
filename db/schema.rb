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

ActiveRecord::Schema.define(version: 20171201204806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dns", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dnssecs", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "domain_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "record_type"
    t.string "name"
    t.string "ip_address"
    t.string "ttl"
    t.string "region_name"
    t.string "content"
    t.string "mail_serverhost"
    t.integer "priority"
    t.text "other_servers"
    t.text "ip_networks"
    t.text "ipv6_networks"
    t.text "include"
    t.string "all_others"
    t.string "destination_url"
    t.string "name_server"
    t.string "symbolic_name"
    t.string "protocol"
    t.string "weight"
    t.string "port"
    t.string "target"
    t.string "order_name"
    t.string "preference"
    t.string "flags"
    t.string "service"
    t.string "regex"
    t.string "replacement"
    t.string "ipv6_address"
    t.string "algorithm"
    t.string "fingerprint_type"
    t.text "finger_print"
    t.string "cpu"
    t.string "operating_system"
    t.string "provider"
    t.string "certificate_type"
    t.string "email"
    t.string "tag"
    t.string "value"
    t.integer "domain_id"
    t.string "domain_name"
  end

  create_table "domains", force: :cascade do |t|
    t.string "domain_name"
    t.text "record_type"
    t.string "dns"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "domain_id"
  end

  create_table "email_forwardings", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hostings", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manage_domains", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", force: :cascade do |t|
    t.integer "domain_id"
    t.string "domain_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ssl_certificates", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.string "domain_name"
    t.integer "domain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
