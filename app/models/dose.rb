class Dose < ApplicationRecord
  validates :description, presence: true
  validates :ingredient, presence: true
  validates :cocktail, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # [cocktail, ingredient] pairings should be unique.
  belongs_to :cocktail
  belongs_to :ingredient
end
