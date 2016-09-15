class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.date :pickup_date
      t.date :delivery_date
      t.references :client, foreign_key: true
      t.references :agency, foreign_key: true
      t.decimal :total

      t.timestamps
    end
  end
end
