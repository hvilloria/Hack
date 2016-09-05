require 'rest-client'
require 'json'
class Post
	attr_accessor :id

	def initialize (id)
		@base_url = 'http://192.168.24.30:3000/'
		@id = id
	end

	def seleccionar_get(n)

		response = RestClient.get 'http://192.168.24.30:3000/',{:id => id} 
		res=JSON.parse(response)
		puts res
	end

	def get
		puts "cual post desea traer?"
		n=gets.chomp.to_i
		seleccionar_get(n)		
	end


end	




