# == Schema Information
#
# Table name: weeks
#
#  id         :integer          not null, primary key
#  content    :string           not null
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Week < ApplicationRecord
  has_many :academic_weeks
  has_many :days
end
