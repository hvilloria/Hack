class AddReferencesToAcademicDay < ActiveRecord::Migration[5.0]
  def change
    add_reference :academic_days, :day, foreign_key: true
  end
end
