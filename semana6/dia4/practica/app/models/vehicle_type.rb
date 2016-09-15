class VehicleType < ApplicationRecord
	has_many :vehicles
	has_many :costs
end
