class Detail < ApplicationRecord
	enum status: [:active,:inactive]
	belongs_to :vehicle
	belongs_to :reservation
end
