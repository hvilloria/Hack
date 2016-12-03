days = ["Busquedas, linux, terminal 1","Terminal 2, algoritmos",
       "Variables, tipos de dato, estructura de control","Estructuras iterativas, arreglos",
       "Arreglos, ordenamiento basico","Arreglos multidimensionales",
       "Funciones, programacion estructurada","Practica de algoritmos","Practica de algoritmoss",
       "Entrega de proyecto y certificación"]




Day.find_or_create_by(content: "Busquedas, linux, terminal 1") do |d|
  d.position = 1
  d.week_id = 1
end

Day.find_or_create_by(content: "Terminal 2, algoritmos") do |d|
  d.position = 2
  d.week_id = 1
end

Day.find_or_create_by(content: "Variables, tipos de dato, estructura de control") do |d|
  d.position = 3
  d.week_id = 1
end

Day.find_or_create_by(content: "Estructuras iterativas, arreglos") do |d|
  d.position = 4
  d.week_id = 1
end

Day.find_or_create_by(content: "Arreglos, ordenamiento basico") do |d|
  d.position = 5
  d.week_id = 1
end

Day.find_or_create_by(content: "Arreglos multidimensionales") do |d|
  d.position = 1
  d.week_id = 2
end

Day.find_or_create_by(content: "Funciones, programacion estructurada") do |d|
  d.position = 2
  d.week_id = 2
end

Day.find_or_create_by(content: "Practica de algoritmos") do |d|
  d.position = 3
  d.week_id = 2
end

Day.find_or_create_by(content: "Practica de algoritmoss") do |d|
  d.position = 4
  d.week_id = 2
end

Day.find_or_create_by(content: "Entrega de proyecto y certificación") do |d|
  d.position = 5
  d.week_id = 2
end

