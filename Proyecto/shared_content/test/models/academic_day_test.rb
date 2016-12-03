# == Schema Information
#
# Table name: academic_days
#
#  id               :integer          not null, primary key
#  schedule         :date             not null
#  status           :integer
#  position         :integer
#  academic_week_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  day_id           :integer
#

require 'test_helper'

class AcademicDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
