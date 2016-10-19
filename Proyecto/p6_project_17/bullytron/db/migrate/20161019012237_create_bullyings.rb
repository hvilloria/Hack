class CreateBullyings < ActiveRecord::Migration[5.0]
  def change
    create_table :bullyings do |t|
      t.references :bully, references: :people
      t.references :bulled, references: :people
      t.text :description
      t.integer :the_best

      t.timestamps
    end
  end
end
