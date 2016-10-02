class Waiter < ApplicationRecord
  belongs_to :restaurant #bien
  has_many :orders
end
