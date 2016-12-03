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

class AcademicWeek < ApplicationRecord
  belongs_to :promotion
  has_many :academic_days
  belongs_to :week
  has_many :academic_notes, through: :academic_days

  def self.content_weeks
  	content = self.all.map do |elem|
  		 {id: elem.id, 
        title: elem.week.content,
  		 	position: elem.position,
  		 	notes: notes_quantity(elem)}
  	end
  	content;
  end

  def self.notes_quantity(week)
  	week.academic_notes.length
  end

end
