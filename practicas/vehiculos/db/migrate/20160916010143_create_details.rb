class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.decimal :price
      t.integer :status

      t.timestamps
    end
  end
end
