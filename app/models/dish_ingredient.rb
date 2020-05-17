class DishIngredient < ApplicationRecord
  validates :ingredient, presence: true
end