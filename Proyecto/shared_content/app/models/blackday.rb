# == Schema Information
#
# Table name: blackdays
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  day          :date             not null
#  promotion_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Blackday < ApplicationRecord
  belongs_to :promotion
end
