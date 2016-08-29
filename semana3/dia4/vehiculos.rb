
class Vehiculo;
	attr_accessor :type_of,:engine,:wheels,:steering_wheel,:seating,:fuel
	
	def initialize(type_of,engine,wheels,steering_wheel,seating,fuel)
		@type_of=type_of
		@engine=engine
		@wheels=wheels
		@steering_wheel=steering_wheel
		@seating = seating
		@fuel = fuel
	end

	def acelerar
		puts "*acelerando #{@type_of}, para esto se requiere de  #{@engine}, #{@wheels} ruedas, #{@steering_wheel} volante y #{@fuel}." 
	end

	def conducir
		puts "*conduciendo #{@type_of}, tipo de combustible: #{@fuel} .."	
	end

	def pasajeros
		puts "*tiene #{seating} asientos, recuerde que solo puede llevar #{seating-1} pasajeros"
		
	end

	def encender
		puts "-"*50
		puts "*genial #{@type_of} funcionando (encendido)"
	end

	def apagar
		puts "*apagando #{@type_of}. recuerde que para acelerar debe encender de nuevo el vehiculo"	
	end

end


class Motocicleta < Vehiculo
	
	def initialize(type_of,engine,wheels,steering_wheel,seating,fuel)
		super
	end

	def apagar
		super
		puts "y recuerde bajar la pata de esta #{@type_of}"
	end
end


class Camion < Vehiculo
	
	def initialize(type_of,engine,wheels,steering_wheel,seating,fuel)
		super
	end
	def pasajeros
		super
		puts "ademas de que posee una plataforma en la que no puede llevar pasajeros, solo cargamento o vehiculos."
	end

end

class Autobus<Vehiculo
	def initialize(type_of,engine,wheels,steering_wheel,seating,fuel)
	super
	end

	def pasajeros
		super
		puts "posee muchos mas asientos que casi cualquier otro vehiculo automotor, puede utilizar esa ventaja para transporte terrestre"
	end
end	



corolla = Vehiculo.new("Automovil","motor v4",4,"1",4,"gasolina 95")
corolla.encender
corolla.acelerar
corolla.conducir
corolla.pasajeros
corolla.apagar

empire = Motocicleta.new("Motocicleta","motor 150","2","1",2,"combustible 95")
empire.encender
empire.acelerar
empire.conducir
empire.pasajeros
empire.apagar

camion = Camion.new("Camion","motor V6",4,"1",2,"gasoil")
camion.encender
camion.acelerar
camion.conducir
camion.pasajeros
camion.apagar

bus = Vehiculo.new("Autobus","motor 3.6",6,"1",30,"gasoil")
bus.encender
bus.acelerar
bus.conducir
bus.pasajeros
bus.apagar
