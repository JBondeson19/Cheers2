class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :bartender_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
