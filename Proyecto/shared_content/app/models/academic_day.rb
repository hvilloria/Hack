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

class AcademicDay < ApplicationRecord
  belongs_to :academic_week
  belongs_to :day
  has_many :academic_notes

  # academic_days.[id].day.content

  def self.content_days(week_id)
    self.all.where(academic_week_id: week_id).each do |class_day|
      content = {name: class_day.day.content,
                 notes_quantity: class_day.academic_notes.length}
      
    end
  end

end
