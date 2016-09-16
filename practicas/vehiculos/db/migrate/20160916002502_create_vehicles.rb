class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :register
      t.string :brand
      t.string :model
      t.string :color

      t.timestamps
    end
  end
end
