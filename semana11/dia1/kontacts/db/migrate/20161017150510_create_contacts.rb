class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :mobile
      t.string :phone
      t.string :email
      t.string :email2
      t.integer :gender
      t.date :birthdate
      t.string :avatar

      t.timestamps null: false
    end
  end
end
