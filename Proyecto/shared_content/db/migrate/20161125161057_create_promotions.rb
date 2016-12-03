class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :name, null: false, unique: true
      t.date :start, null: false

      t.timestamps
    end
  end
end
