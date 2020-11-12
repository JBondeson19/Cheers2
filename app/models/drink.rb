class Drink < ApplicationRecord

    has_many :fave_drinks
    has_many :users, through: :fave_drinks

    belongs_to :user

    validates :name, presence: true 
    validates :name, uniqueness: true
    validates :price, numericality: {greater_than: 0, less_than_or_equal_to: 18}
    validates :alcohol, numericality: {greater_than: 0.00, less_than_or_equal_to: 16.00}
    validates :classification, inclusion: {in: %w(Beer Wine Cocktail), message: "%{value} needs to be Beer, Wine, or Cocktail" }
end
