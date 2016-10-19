class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :person, foreign_key: true, null: false
      t.string :dni
      t.string :name, null: false
      t.string :lastname, null: false
      t.date :birthday, null: false
      t.integer :gender, null:false
      t.boolean :car, default: false

      t.timestamps
    end
  end
end
