class CreateOrdersPlates < ActiveRecord::Migration[5.0]
  def change
    create_table :orders_plates do |t|
      t.references :plate, index: true
      t.references :order, index: true
    end
  end
end
