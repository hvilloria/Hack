require_relative "request"

class Start

	def self.menu	
		system("clear")
		request=Request.new
		puts "Bienvenido, Ingrese modo de busqueda"
		puts "1. Por titulo"
		puts "2. Por Año"
			answer = gets.chomp
			case answer
				when "1" 
					puts "indique nombre de la pelicula"
					name=gets.chomp
					request.by_name(name)
					request.menu_to_list_specifications
				when "2"
					puts "ingrese año de pelicula"
					year=gets.chomp
					puts "ingrese nombre de pelicula"
					name=gets.chomp
					request.by_year(name,year)
					request.menu_to_list_specifications
				else
					puts "opcion no valida"
			end
		
	end

end
