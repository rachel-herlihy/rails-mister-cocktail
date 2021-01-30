class Ingredient < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true
end
