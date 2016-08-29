

class Plain
    def initialize pilot, people_flying, from, destiny
        @pilot = pilot
        @people_flying = people_flying
        @from = from
        @destination = destiny
    end

    def mostrar
    	puts @pilot
    	puts @people_flying
    	puts @from
    	puts @destination
    end
end

x = Plain.new "Juan", 234, "Italy", "Venezuela"
x.mostrar



=begin	
el error erradica en el argumento pasado en el constructor, que era "destination".
al cambiarlo a "destiny" funciona de modo correcto
=end


