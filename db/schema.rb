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

ActiveRecord::Schema.define(version: 2022_01_29_164608) do

  create_table "appointments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "doctor_id"
    t.time "start_at"
    t.time "end_at"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
  end

  create_table "doctors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.integer "age"
    t.bigint "speciality_id"
    t.index ["speciality_id"], name: "index_doctors_on_speciality_id"
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "religion"
    t.integer "age"
  end

  create_table "rates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "reservation_id_id"
    t.integer "rate_value"
    t.text "comment"
    t.index ["reservation_id_id"], name: "index_rates_on_reservation_id_id"
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "doctor_id_id"
    t.bigint "patient_id_id"
    t.bigint "appointment_id_id"
    t.text "case"
    t.index ["appointment_id_id"], name: "index_reservations_on_appointment_id_id"
    t.index ["doctor_id_id"], name: "index_reservations_on_doctor_id_id"
    t.index ["patient_id_id"], name: "index_reservations_on_patient_id_id"
  end

  create_table "specialities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
  end

end
