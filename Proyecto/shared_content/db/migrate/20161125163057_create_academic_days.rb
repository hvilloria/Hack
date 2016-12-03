class CreateAcademicDays < ActiveRecord::Migration[5.0]
  def change
    create_table :academic_days do |t|
      t.date :schedule, null: false
      t.integer :status
      t.integer :position
      t.references :academic_week, foreign_key: true


      t.timestamps
    end
  end
end
