
AcademicDay.find_or_create_by(position: 1) do |ad|
  ad.schedule = DateTime.now
  ad.academic_week_id = 1
  ad.day_id = 1
end

AcademicDay.find_or_create_by(position: 2) do |ad|
  ad.schedule = DateTime.now
  ad.academic_week_id = 1
  ad.day_id = 2
end

AcademicDay.find_or_create_by(position: 3) do |ad|
  ad.schedule = DateTime.now
  ad.academic_week_id = 1
  ad.day_id = 3
end

AcademicDay.find_or_create_by(position: 4) do |ad|
  ad.schedule = DateTime.now
  ad.academic_week_id = 1
  ad.day_id = 4
end

AcademicDay.find_or_create_by(position: 5) do |ad|
  ad.schedule = DateTime.now
  ad.academic_week_id = 1
  ad.day_id = 5
end

AcademicDay.find_or_create_by(position: 10) do |ad|
  ad.position = 1
  ad.schedule = DateTime.now
  ad.academic_week_id = 2
  ad.day_id = 6
end

AcademicDay.find_or_create_by(position: 20) do |ad|
  ad.position = 2
  ad.schedule = DateTime.now
  ad.academic_week_id = 2
  ad.day_id = 7
end

AcademicDay.find_or_create_by(position: 30) do |ad|
  ad.position = 3
  ad.schedule = DateTime.now
  ad.academic_week_id = 2
  ad.day_id = 8
end

AcademicDay.find_or_create_by(position: 40) do |ad|
  ad.position = 4
  ad.schedule = DateTime.now
  ad.academic_week_id = 2
  ad.day_id = 9
end

AcademicDay.find_or_create_by(position: 50) do |ad|
  ad.position = 5
  ad.schedule = DateTime.now
  ad.academic_week_id = 2
  ad.day_id = 10
end