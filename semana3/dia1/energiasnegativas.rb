

a = 123

x = [nil, false, true, false, true, "0", a]

x.map! do |elem|
	elem=true
end

puts x


=begin
	en este programa se recibe un forza un cambio a valores logicos
	"true" recorriendo el arreglo y cambiando a true a traves de los 
	elementos encontrados a lo largo del arreglo
=end