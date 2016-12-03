# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  type_of    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  has_many :users
end
