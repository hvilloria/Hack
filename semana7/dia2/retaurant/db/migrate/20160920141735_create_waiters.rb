class CreateWaiters < ActiveRecord::Migration[5.0]
  def change
    create_table :waiters do |t|
      t.string :name
      t.integer :gender
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
