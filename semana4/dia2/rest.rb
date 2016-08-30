require 'net/http'

endpoint = 'api.openweathermap.org'






resp = Net::HTTP.get(enpoint, "/data/2.5/weather?=q#{city}&appid=#{appid}")



resp_hash= JSON.parse(resp)

resp_hash.class

puts resp_hash["weather"][0]["description"]  #se va al hash "weather" que tiene dentro un array de hashes, entonces
#para poder llegar al description necesito pararme en la posicion 0 (que seria la del array) para poder luego llamar a la clave description en el hash

weather = [{description: "light rain"}]