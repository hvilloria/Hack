class CreateWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.string :content, null: false
      t.integer :position

      t.timestamps
    end
  end
end
