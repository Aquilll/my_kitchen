class Timing < ApplicationRecord
  has_many :dish_timings
  has_many :dishes, through: :dish_timings
  validates :name, presence: true
end