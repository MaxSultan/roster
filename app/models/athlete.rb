class Athlete < ApplicationRecord
  has_one :weight
  has_one :list, through: :weight
end
