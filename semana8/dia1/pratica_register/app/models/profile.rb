class Profile < ApplicationRecord
  belongs_to :person
  has_many :phones

  enum gender:[:male,:female]
end
