class AddFieldToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :garage, foreign_key: true
  end
end
