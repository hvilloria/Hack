class Grade < ApplicationRecord
	belongs_to :school
	belongs_to :grande_level
	has_many :subjects
end