class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :waiter
  has_and_belongs_to_many :plates

  enum status:[:Opened,:Closed]
end
