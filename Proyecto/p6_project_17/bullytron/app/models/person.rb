class Person < ApplicationRecord
	has_many :bully, class_name: "Bullying", foreign_key: "bully_id"
	has_many :bulled, class_name: "Bullying", foreign_key: "bulled_id"
end
