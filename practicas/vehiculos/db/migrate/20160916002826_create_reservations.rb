class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.date :pick_up_date
      t.date :final_date
      t.decimal :total_price

      t.timestamps
    end
  end
end
