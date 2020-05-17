class Dish < ApplicationRecord
  # associations
  has_many :dish_timings
  has_many :timings, through: :dish_timings
  belongs_to :cuisine
  has_one :dish_ingredient

  # validations
  validates :name, presence: true
end