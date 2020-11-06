class Drink < ApplicationRecord

    has_many :fave_drinks
    has_many :users, through: :fave_drinks

    belongs_to :user
end
