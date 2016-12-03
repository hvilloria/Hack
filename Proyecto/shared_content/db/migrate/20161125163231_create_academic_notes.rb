class CreateAcademicNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :academic_notes do |t|
      t.string :title
      t.text :description
      t.string :author
      t.date :post
      t.references :academic_day#, foreign_key: true
      t.references :user#, foreign_key: true

      t.timestamps
    end
  end
end
