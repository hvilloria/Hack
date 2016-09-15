class CreateSongsListMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :songs_list_musics do |t|
      t.references :songs, foreign_key: true
      t.references :list_musics, foreign_key: true
    end
  end
end
