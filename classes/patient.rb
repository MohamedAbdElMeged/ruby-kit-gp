class Patient < ActiveRecord::Base
    has_many :reservations
end