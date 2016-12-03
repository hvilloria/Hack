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

class Profile < ApplicationRecord
  belongs_to :user
end
