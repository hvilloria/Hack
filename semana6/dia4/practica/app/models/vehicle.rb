class Vehicle < ApplicationRecord
	belongs_to :type, class_name: 'VehicleType', foreign_key: 'vehicle_type_id'
end
