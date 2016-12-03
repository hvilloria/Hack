class AddReferencesToDay < ActiveRecord::Migration[5.0]
  def change
    add_reference :days, :week, foreign_key: true
  end
end
