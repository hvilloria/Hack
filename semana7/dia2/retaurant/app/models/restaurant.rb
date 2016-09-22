class Restaurant < ApplicationRecord
	has_many :customers
	has_many :plates
	has_many :waiters
end
