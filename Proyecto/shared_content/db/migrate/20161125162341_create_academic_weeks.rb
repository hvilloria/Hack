class CreateAcademicWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :academic_weeks do |t|
      t.integer :position, null: false
      t.references :promotion, foreign_key: true

      t.timestamps
    end
  end
end
