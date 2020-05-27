class Weight < ApplicationRecord
  belongs_to :list
  has_many :athletes
end
