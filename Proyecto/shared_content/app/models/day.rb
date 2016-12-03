# == Schema Information
#
# Table name: days
#
#  id         :integer          not null, primary key
#  content    :string           not null
#  position   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  week_id    :integer
#

class Day < ApplicationRecord
  has_many :academic_days
  has_many :notes
  belongs_to :week
end
