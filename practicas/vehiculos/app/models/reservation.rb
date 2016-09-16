class Reservation < ApplicationRecord
	belongs_to :agency
	belongs_to :client
	has_many :details
	has_many :vehicles, through: :details
	
end
