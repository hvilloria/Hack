# == Schema Information
#
# Table name: academic_notes
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  author          :string
#  post            :date
#  academic_day_id :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class AcademicNoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
