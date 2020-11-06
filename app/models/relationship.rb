class Relationship < ApplicationRecord

    belongs_to :bartender, class_name: "User", foreign_key: :bartender_id
    belongs_to :friend, class_name: "User", foreign_key: :friend_id

end
