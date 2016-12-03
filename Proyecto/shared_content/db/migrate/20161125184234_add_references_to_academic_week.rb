class AddReferencesToAcademicWeek < ActiveRecord::Migration[5.0]
  def change
    add_reference :academic_weeks, :week, foreign_key: true
  end
end
