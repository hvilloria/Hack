class AddFieldsToDetail < ActiveRecord::Migration[5.0]
  def change
    add_reference :details, :vehicle, foreign_key: true
    add_reference :details, :reservation, foreign_key: true
  end
end
