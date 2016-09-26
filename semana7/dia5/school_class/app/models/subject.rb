class Subject < ApplicationRecord
has_and_belongs_to_many :teachers
belongs_to :grade
end