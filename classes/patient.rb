class Patient < ActiveRecord::Base
    has_one :speciality
end