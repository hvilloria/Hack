# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  password   :string           not null
#  email      :string           not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
