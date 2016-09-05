require 'rest-client'
require 'json'

class Request
	@@count=0
	@@movies = []

	def take_description(id)
		link=RestClient.get 'http://www.omdbapi.com/?',{:params => {:i => id}}
	 	data=JSON.parse(link)	
	 	 data["Plot"]	
	end

	def by_name(palabra)
		link=RestClient.get 'http://www.omdbapi.com/?',{:params => {:s => palabra}}
	 	data=JSON.parse(link)
	 	
	 	data["Search"].each do |elem|
	 		@@count += 1
	 		@@movies << {title: elem["Title"],year: elem["Year"],id: elem["imdbID"],numero: @@count }
	 	end

	 	@@movies.each do |elem|
	 		puts "*********************************"
			puts "Title: #{elem[:title]}"
			puts "Year: #{elem[:year]}"
			puts "Descripcion: #{take_description(elem[:id])}"
			puts "Nro de Pelicula: #{elem[:numero]}"
		end
	end

	def by_year(name,year)
		link=RestClient.get 'http://www.omdbapi.com/?',{:params => {:y => year,:s => name}}
	 	data=JSON.parse(link)

	 	data["Search"].each do |elem|
	 		@@count += 1
	 		@@movies << {title: elem["Title"],year: elem["Year"],id: elem["imdbID"],numero: @@count}

	 	end

	 	@@movies.each do |elem|
	 		puts "*********************************"
			puts "Title: #{elem[:title]}"
			puts "Year: #{elem[:year]}"
			puts "Descripcion: #{take_description(elem[:id])}"
			puts "Nro de Pelicula: #{elem[:numero]}"			
		end 

	end

	def menu_to_list_specifications
		puts "*******************************************"
		puts "Recuerdas haber visto numero de peliculas?"
		puts "selecciona el numero de la pelicula que quieres ver"
		number=gets.chomp.to_i
		@@movies.each do |elem|
			if elem[:numero] == number
				name= elem[:title]
				puts "-------------------------"
				puts "Has seleccionado la pelicula  #{name}"
				puts "-------------------------"
				link=RestClient.get 'http://www.omdbapi.com/?',{:params => {:t => name}}
 				@movie=JSON.parse(link)
 				puts "Title: #{@movie["Title"]}"
 				puts "Description: #{@movie["Plot"]}"
 				puts "Date: #{@movie["Released"]}"
 				puts "Genre: #{@movie["Genre"]}"
 				puts "Actors: #{@movie["Actors"]}"
			end	
		end
	end
end


