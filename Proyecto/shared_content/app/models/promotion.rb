# == Schema Information
#
# Table name: promotions
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  start      :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Promotion < ApplicationRecord
  has_many :users
  has_many :blackdays
  has_many :academic_weeks
end
