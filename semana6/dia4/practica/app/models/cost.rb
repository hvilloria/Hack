class Cost < ApplicationRecord
	enum status: [:active,:inactive]
	#has_one :cost, -> (cost) { where(status: cost,status,active) }
	has_many :vehicle_types
end
