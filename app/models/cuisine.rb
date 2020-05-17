# frozen_string_literal: true

class Cuisine < ApplicationRecord
  has_many :dishes
  validates :name, presence: true
end
