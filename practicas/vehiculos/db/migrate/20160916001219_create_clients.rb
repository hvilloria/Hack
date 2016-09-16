class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :dni
      t.string :name
      t.string :last_name
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
