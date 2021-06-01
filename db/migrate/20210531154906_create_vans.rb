class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.integer :capacity
      t.float :day_price
      t.string :brand
      t.string :model
      t.string :location_address
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
