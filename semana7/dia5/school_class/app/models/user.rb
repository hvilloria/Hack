class User < ApplicationRecord
has_many :students
has_many :teachers
has_many :schools

end