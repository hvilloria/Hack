#nada para copiar aqui

=begin
irb
base_url = 'https://jsonplaceholder.typicode.com/'
=> "https://jsonplaceholder.typicode.com/"


response= RestClient.get base_url + 'posts/'
=end


require 'rest-client'
require 'json'

base_url = 'http://192.168.24.30:3000/'

response = RestClient.get base_url + 'posts/1'
res=JSON.parse(response)
puts res
#puts response
#puts response.code
#puts response.cookies





