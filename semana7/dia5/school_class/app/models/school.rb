class School < ApplicationRecord
	belongs_to :user
	accepts_nested_attributes_for :user



	validates :address, presence: true
end