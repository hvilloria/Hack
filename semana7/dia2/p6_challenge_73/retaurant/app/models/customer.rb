class Customer < ApplicationRecord
  belongs_to :restaurant #bien
  has_many :orders
  has_and_belongs_to_many :plates

  enum gender:[:Male,:Female]
end
