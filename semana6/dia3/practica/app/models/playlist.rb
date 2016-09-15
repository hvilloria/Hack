class Playlist < ApplicationRecord
	belongs_to :user
	belongs_to :list_music
end