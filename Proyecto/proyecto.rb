
#*************** Hosward Villoria **************#
require 'colorize'

def crear_tablero(m,n,o) #PROCEDIMIENTO PARA CREAR LOS TABLEROS
	
	for i in 0..10 do 
		m[i]=[]
		for j in 0..10 do
			m[i][j]= 0
		end
	
	end
	for i in 0..10 do 
		n[i]=[]
		for j in 0..10 do
			n[i][j]= 0
		end
	
	end
	for i in 0..10 do 
		o[i]=[]
		for j in 0..10 do
			o[i][j]= 0
		end
	
	end
	
end
def modificar_tablero(m,n,o) #PROCEDIMIENTO CREADO PARA MODIFICAR POSICIONES 0 DE FILA ES Y COLUMNAS DEL 1 AL 10
	for i in 0..m.length-1 do 
			m[0][i]=i	
	end
	for j in 0..m.length-1
			m[j][0] = j
	end	

	for i in 0..n.length-1 do 
			n[0][i]=i			
	end
	for j in 0..n.length-1
			n[j][0] = j
	end	

	for i in 0..o.length-1
			o[0][i] = i
	end	
	for j in 0..o.length-1
			o[j][0] = j
	end	

end

def mostrar_tablero(m,n,o) #PROCEDIMIENTO PARA MOSTRAR TABLERO TANTO DE PLAYER COMO DE ATAQUE DE PC
	system("clear")
	puts "Jugador: #{$pseudonimo} ".colorize(:red)
	for i in 0..m.length-1 do
		for j in 0..m.length-1 do
		end
		puts "#{m[i]}".colorize(:light_blue)
		
	end	
	puts "Score: #{$aciertospl} // Disparos: #{$disparospl}".colorize(:yellow)
	puts "***************"
=begin	 DESCOMENTAR PARA VERIFICAR QUE LAS POSICIONES Y DISPAROS SON LOS CORRECTOS
	for i in 0..n.length-1 do
		for j in 0..n.length-1 do
		end
		puts "#{n[i]}"
	end	
		puts "*********"
=end		
	puts "Jugador: Pc".colorize(:red)
	for i in 0..o.length-1 do
		for j in 0..o.length-1 do
		end
		puts "#{o[i]}".colorize(:light_blue)
	end
	puts "Score: #{$aciertospc} // Disparos: #{$disparospc}".colorize(:yellow)

end


def disparo (m,n,o,nb) #PROCEDIMIENTO PARA EJECUTAR DISPAROS DE PLAYER Y DE PC
	tiro = true
	while ($aciertospl<nb && $aciertospc<nb) do
	
		#DISPARO DE PLAYER
		loop do
			mostrar_tablero(m,n,o)
			puts "turno de disparar de player"
			print "ingrese fila: "
			x=gets.chomp.to_i
			print "ingrese columna: "
			y=gets.chomp.to_i
				if x != 0 && y != 0 then
					if n[x][y] == "x"
						puts "ya has disparado en esta coordenada"
						tiro = true
						gets
									
					elsif n[x][y] == 1
						n[x][y] = "x"	
						o[x][y] = "x"
						$aciertospl = $aciertospl + 1
						$disparospl = $disparospl + 1	
						puts "lancha destruida"
						tiro = true
						gets
						
					elsif n[x][y] == 0
						n[x][y] = 2
						o[x][y] = 2
						tiro = false
						puts "intento fallido"
						$disparospl = $disparospl + 1
						gets
					elsif n[x][y] == 2
						
						tiro = true
						puts "Ya existe una destruccion de peñero en esta posicion! dispara de nuevo"
						gets
					
					end
				else
					puts "Esta no es una coordenada valida. Intenta nuevamente" 
					gets
				end	
			
		break if (tiro == false || $aciertospl>=nb)
		end

		#DISPARO DE PC
		loop do
			mostrar_tablero(m,n,o)
			puts "turno de disparar de pc"
			gets
			x=rand(10) + 1
			puts "fila: #{x} "
			y=rand(10) + 1
			puts "columna: #{y}"
			gets
				if m[x][y] == "x" #VERIFICAR ESTA LINEA!
					puts "ya has disparado en esta coordenada"
					tiro = true
					gets
				end				
				if m[x][y] == 1
					m[x][y] = "x"
					$aciertospc = $aciertospc + 1
					$disparospc = $disparospc + 1		
					puts "lancha destruida"
					tiro = true
					gets
					
				elsif m[x][y] == 0
					m[x][y] = 2
					tiro = false
					puts "intento fallido"
					$disparospc = $disparospc + 1
					gets
				else
				end
			
		break if (tiro == false || $aciertospc>=nb)
		end
	end
	if $aciertospl > $aciertospc then
		puts "EL GANADOR ES #{$pseudonimo}!!".upcase
	elsif $aciertospl == $aciertospc
		puts "HAY UN EMPATE!! VUELVE A JUGAR POR LA REVANCHA"
	else
		puts "EL GANADOR ES PC!!"
	end
		
end


def num_barcos(m,n,o) #FUNCION SOLICITUD DE NUMEROS DE BARCOS
		loop do
			correcto=true
			puts "Introduzca la cantidad de barcos"
			nb = gets.chomp.to_i
			if nb >= 4 && nb <= 10 then 
				mostrar_tablero(m,n,o)
				return nb
			else		
				puts "vuelva a intentar"
				puts "el numero es incorrecto. Deben ser entre 4 y 10 barcos."
				correcto = false
			end		
		break if (correcto)	
	end
end



def posicionamiento(nb,m,n,o) #MENU PARA TIPO DE POSICIONAMIENTO
	puts "desea posicionar de modo aleatorio o manual?"
	puts "1. Modo Aleatorio"
	puts "2. Modo Manual"
	tipopos=gets.chomp

	case tipopos
	when "1" then
		puts "seleccionó Aleatorio"
		puts "Presione Enter.."
		gets
		posicion_aleatorio(nb,m)

	when "2" then
		puts "Seleccionó Manual"
		puts "Presione Enter.."
		gets
		posicion_manual(nb,m,n,o)

	end

end

def posicion_aleatorio(nb,m) #EL TABLERO DE LA PC SE EJECUTA BAJO ESTE PROCEDIMIENTO
	x=0
	y=0
	j=0		
	
	loop do
		x= rand(10) + 1 
		print "coordenada x: #{x}"
		y = rand(10) + 1 
		print "coordenada y: #{y}"
		
			if x < 1 ||  x > 10 then
				puts "coordenada X no valida. Intente de nuevo"
			elsif y < 1 ||  y > 10 then
				puts "coordenada Y no valida. Intente de nuevo"
			else
				if m[x][y] == 1 then

					puts "espacio ocupado, posiciona tu peñero en otro lado"
					
				elsif m[x][y] == 0 then				
					m[x][y] = 1
					j = j + 1
					puts "peñero posicionado"
				end
			end

	break if (j >= nb)
	end
end

def posicion_manual(nb,m,n,o)
	x=0
	y=0
	j=0		
	mostrar_tablero(m,n,o)
	loop do
		print "indique coordenada x: "
		x= gets.chomp.to_i
		print "indique coordenada y: "
		y = gets.chomp.to_i
		puts "#{x}"
		puts "#{y}"
			if x < 1 ||  x > 10 then
				puts "coordenada X no valida. Intente de nuevo"
			elsif y < 1 ||  y > 10 then
				puts "coordenada Y no valida. Intente de nuevo"
			else
				if m[x][y] == 1 then

					puts "espacio ocupado, posiciona tu peñero en otro lado"
					
				elsif m[x][y] == 0 then				
					m[x][y] = 1
					j = j + 1
					mostrar_tablero(m,n,o)
					puts "peñero posicionado"
				end
			end

	break if (j >= nb)
	end

end


	
def bienvenida
	system("clear")
	puts "BIENVENIDO A BATALLA DE PEÑEROS!!".colorize(:blue)
	print"Indicanos tu pseudonimo: "
	nom=gets.chomp
	puts "Excelente #{nom}! Juguemos!"
	puts "presiona enter para continuar"
	gets
	return nom
end




def main #PROCEDIMIENTO PRINCIPAL
	loop do

		player=[]
		pc=[]
		attack = []
		$aciertospl = 0
		$aciertospc = 0
		$disparospl = 0
		$disparospc = 0

		

		$pseudonimo = bienvenida
		crear_tablero(player,pc,attack)
		modificar_tablero(player,pc,attack)
		mostrar_tablero(player,pc,attack)
		nb=num_barcos(player,pc,attack)
		posicionamiento(nb,player,pc,attack)
		posicion_aleatorio(nb,pc)
		disparo(player,pc,attack,nb)
		puts "Desea volver a jugar? (si/no)"
		respuesta = gets.chomp.downcase
		break if (respuesta == "no")		
	end
end



main #EJECUCION DE PROGRAMA.
=begin
DUDAS

*se puede mejorar en sentido de turnos? que sea repetitivo(DONE!!)
*como se hace para ubicar una coordenada(DONE)

=end

 