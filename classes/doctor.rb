class Doctor < ActiveRecord::Base
    has_one :speciality
    has_many :appointments
    has_many :reservations
end