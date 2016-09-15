class Song < ApplicationRecord
	has_and_belongs_to_many :list_musics
end