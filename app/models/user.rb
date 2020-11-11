class User < ApplicationRecord

    has_secure_password #needed for bcrypt gem to hide/encrypt passwords

    validates :name, presence: true 
    
    has_many :fave_drinks
    has_many :drinks, through: :fave_drinks

    has_many :drinks

    has_many :active_relationships, class_name: "Relationship", foreign_key: :friend_id, dependent: :destroy
    has_many :bartenders, through: :active_relationships, source: :bartender
    
    has_many :passive_relationships, class_name: "Relationship", foreign_key: :bartender_id, dependent: :destroy
    has_many :friends, through: :passive_relationships, source: :friend



end
