class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.float :price
      t.string :model
      t.string :size
      t.string :year
      t.string :location
      t.references :user, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end
