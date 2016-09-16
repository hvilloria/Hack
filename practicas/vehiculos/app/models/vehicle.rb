class Vehicle < ApplicationRecord
	belongs_to :garage
	has_many :details
	has_many :reservations, through: :details
end
