class AddAnotheFieldToReservation < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :client, foreign_key: true
  end
end
