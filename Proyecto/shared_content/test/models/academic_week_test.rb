# == Schema Information
#
# Table name: academic_weeks
#
#  id           :integer          not null, primary key
#  position     :integer          not null
#  promotion_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  week_id      :integer
#

require 'test_helper'

class AcademicWeekTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
