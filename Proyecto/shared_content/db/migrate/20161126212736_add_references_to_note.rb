class AddReferencesToNote < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :day, foreign_key: true
  end
end
