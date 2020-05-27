class List < ApplicationRecord
    has_many :weights
    has_many :athletes, through: :weights
end
