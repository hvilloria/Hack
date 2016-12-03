class CreateBlackdays < ActiveRecord::Migration[5.0]
  def change
    create_table :blackdays do |t|
      t.string :name, null: false
      t.date :day, null: false
      t.references :promotion, foreign_key: true

      t.timestamps
    end
  end
end
