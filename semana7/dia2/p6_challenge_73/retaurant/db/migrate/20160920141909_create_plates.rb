class CreatePlates < ActiveRecord::Migration[5.0]
  def change
    create_table :plates do |t|
      t.string :name
      t.integer :price
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
