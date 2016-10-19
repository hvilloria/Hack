class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.references :profile, foreign_key: true, null: false
      t.string :phone_number

      t.timestamps
    end
  end
end
