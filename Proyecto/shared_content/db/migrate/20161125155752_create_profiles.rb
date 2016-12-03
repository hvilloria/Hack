class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username, null: false, unique: true
      t.string :password, null: false
      t.string :email, null: false, unique: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
