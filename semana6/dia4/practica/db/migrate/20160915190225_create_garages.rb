class CreateGarages < ActiveRecord::Migration[5.0]
  def change
    create_table :garages do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
