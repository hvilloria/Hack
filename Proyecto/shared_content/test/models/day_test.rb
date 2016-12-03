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

require 'test_helper'

class DayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
