class CreateCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :costs do |t|
      t.decimal :price
      t.date :date
      t.integer :status

      t.timestamps
    end
  end
end
