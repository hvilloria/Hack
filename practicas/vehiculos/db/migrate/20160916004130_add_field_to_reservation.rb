class AddFieldToReservation < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :agency, foreign_key: true
  end
end
