class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :email
      t.date :birthdate
      t.integer :gender
      t.string :profile_picture

      t.timestamps
    end
  end
end
