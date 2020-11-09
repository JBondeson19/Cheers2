class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :price
      t.float :alcohol
      t.string :classification
      t.integer :user_id

      t.timestamps
    end
  end
end
