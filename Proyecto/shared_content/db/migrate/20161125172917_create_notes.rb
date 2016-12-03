class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.string :author
      t.date :post_date
      t.references :academic_note

      t.timestamps
    end
  end
end
