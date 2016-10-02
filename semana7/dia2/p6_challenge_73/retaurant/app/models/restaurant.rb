class Restaurant < ApplicationRecord
	has_many :customers #bien
	has_many :plates #bien
	has_many :waiters  #bien
end
