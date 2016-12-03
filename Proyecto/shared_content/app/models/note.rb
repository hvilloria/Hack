# == Schema Information
#
# Table name: notes
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  author           :string
#  post_date        :date
#  academic_note_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  day_id           :integer
#

class Note < ApplicationRecord
  has_many :academic_notes
  belongs_to :day
end
