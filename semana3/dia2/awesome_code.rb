

def proc_par  (num)
	Proc.new do |x| 
		if x % num == 0 then
			puts "par!" 
		else 
			puts "impar!"
		end 
	end
end

=begin
Crea un procedimiento que recibe como parametro un numero, el cual sera fijo
Se recibe un segundo numero "x" que evaluara numero par o impar al este numero anterior
=end

num= proc_par(2) # se asigna el numero 2 como num.
num.call(3)#llamado al proc y evaluacion de numero par => impar!
num.call(2)#llamado al proc y evaluacion d numero par => par!