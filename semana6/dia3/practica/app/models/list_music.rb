class ListMusic < ApplicationRecord
	has_many :playlists
	has_many :users, through: :playlists
	has_and_belongs_to_many :songs
end