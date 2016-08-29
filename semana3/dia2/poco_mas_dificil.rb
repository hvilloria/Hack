


def metodo(proc,&bloque) #este es mi bloque

puts "Creando bloque!"
	if block_given?
		bloque.call(proc) #llamado al bloque
			puts "Bloque creado y funcionando! :D"
	end
end

def proc() #este es mi proc
	Proc.new do  
	puts "Dentro del proc"
	end	 
end



metodo(proc)do #ejecucion de bloque
	puts "en la ejecucion del bloque"
	pro=proc
	pro.call
end



=begin probando con mensajes cada ejecucion de bloques y procs!
=end