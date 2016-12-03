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

require 'test_helper'

class BlackdayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
