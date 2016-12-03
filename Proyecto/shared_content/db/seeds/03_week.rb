week = ["Introductorio 1","Introductorio 2","Ruby idiomatico","Objetos en Ruby + HTTP",
				"DB + Rails","Rails + ActiveRecord","Controllers + JSON Response","HTML + CSS",
				"Bootstrap","Rails views","Javascript","jQuery",
				"ES6 + React","React"]


	
week.each_with_index do |value,index|
	Week.find_or_create_by(content: value) do |w|
	  w.position = index + 1
	end
end





