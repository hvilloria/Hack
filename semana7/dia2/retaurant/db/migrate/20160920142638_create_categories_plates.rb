class CreateCategoriesPlates < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_plates do |t|
      t.references :plate, index: true
      t.references :category, index: true
    end
  end
end
