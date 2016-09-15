class CreateListMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :list_musics do |t|
      t.string :name
    end
  end
end
