Note.find_or_create_by({post_date: "13/12/2016"}) do |note|
  note.title = "la historia de las veces"
  note.description = "era una vez y ahora son dos veces"
  note.author = "elba lazo"
  note.academic_note_id = 1
  note.day_id = 1
end