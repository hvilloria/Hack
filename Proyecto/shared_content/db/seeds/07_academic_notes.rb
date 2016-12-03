#brother sacame de dudas aqui, como haria para capturar ese academic_day_id y el user_id
#no se si lo hice bien o por el contrario esta chimbo, dejame notas por aqui para revisar
#en el gitlab


AcademicNote.find_or_create_by({post: "13/12/2016"}) do |anote|
  anote.title = "la historia de las veces"
  anote.description = "era una vez y ahora son dos veces"
  anote.author = "elba lazo"
  anote.academic_day_id = 1
  anote.user_id = 1
end

AcademicNote.find_or_create_by({post: "11/04/2013"}) do |anote|
  anote.title = "quien se ha llevado mi queso"
  anote.description = "el queso que se llevaron era mio"
  anote.author = "un autor"
  anote.academic_day_id = 2
  anote.user_id = 1
end

AcademicNote.find_or_create_by({post: "23/10/2016"}) do |anote|
  anote.title = "la historia de las veces"
  anote.description = "era una vez y ahora son dos veces"
  anote.author = "elba lazo"
  anote.academic_day_id = 2
  anote.user_id = 1
end
