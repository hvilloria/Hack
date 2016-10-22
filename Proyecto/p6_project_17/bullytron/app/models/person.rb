class Person < ApplicationRecord
	has_many :bully, class_name: "Bullying", foreign_key: "bully_id"
	has_many :bulled, class_name: "Bullying", foreign_key: "bulled_id"
	has_attached_file :photo, styles: {medium: "400x400>", thumb: "100x100>"}
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
