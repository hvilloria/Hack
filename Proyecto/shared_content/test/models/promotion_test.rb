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

require 'test_helper'

class PromotionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
