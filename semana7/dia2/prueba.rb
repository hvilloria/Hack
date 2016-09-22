names = ["Venezuela", "Venezuela", "Peru", "Mexico", "Argetina", "Judah", "Judah", "Allison"]
counts = Hash.new(0)
names.each { |name| counts[name]  += 1 }


a=counts.sort_by{ |country,number| number}.reverse

 a.each do |elem,value| 
 	 print "EL PAIS #{elem} EL PUTO NUMERO#{value}"
 	puts 	
 end

# print a[0]
#puts counts

	
	#people.sort_by { |name, age| age }
