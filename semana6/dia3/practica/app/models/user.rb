class User < ApplicationRecord
	has_many :articles 
	has_many :playlists
	has_many :list_musics, through: :playlists
	#has_one :article 1 a 1 
end