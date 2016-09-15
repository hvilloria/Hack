class CreatePlaylist < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :category
      t.references :user, foreign_key: true
      t.references :list_musics, foreign_key: true
    end
  end
end
