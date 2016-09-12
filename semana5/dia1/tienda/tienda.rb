require 'rest-client'
require 'json'


class Tienda
	
	def self.parsing
		link=RestClient.get('https://hack-stores-api.herokuapp.com/stores/22',{:params => {token: "nXeYvnFinShXEZu8x7yRmw"}})
		puts link
	end	
	def modificar_nombre
		link=RestClient.put 'https://hack-stores-api.herokuapp.com/stores/22',{'store': {'name': 'farmanada' },  'token': 'nXeYvnFinShXEZu8x7yRmw'}
	end
	def check_my_inventory
		link=RestClient.get('https://hack-stores-api.herokuapp.com/inventories/9')#,{:params => {id: 7, token: "nXeYvnFinShXEZu8x7yRmw"}})
		puts link
	end
	def create_product
		link=RestClient.post'https://hack-stores-api.herokuapp.com/inventories',{'inventory':{'quantity':'32','item_attributes':{'name':'atamel','description':'Dolor de cabeza','price':'25'}},'token':'nXeYvnFinShXEZu8x7yRmw'}
	end
	def edit_product
		link= RestClient.put 'https://hack-stores-api.herokuapp.com/inventories',{'inventory':{'quantity':'32','item_attributes':{'name':'atamel','description':'Dolor de cabeza','price':'25'}},'token':'nXeYvnFinShXEZu8x7yRmw'}
	end
end


tienda= Tienda.new
#Tienda.parsing
#tienda.modificar_nombre
tienda.check_my_inventory
#tienda.create_product
#tienda.check_my_inventory


