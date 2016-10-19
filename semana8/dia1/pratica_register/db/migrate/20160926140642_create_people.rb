class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :email, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
