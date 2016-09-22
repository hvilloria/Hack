Rails.application.routes.draw do
  #get 'patients/:id',to: 'patients#show'
  #                     controller#accion

	# resources :patients  >> en este se realiza para consumir solo pacientes


  resources :patients do  #>> en este se usa para tener nested resources
   	resources :records , shallow: true do
   		
   		member do #trabajan como con objetos(tipo con la instancia)
   			get 'print'   #or get 'print', on: :member
   			get 'otra_cosa'
   		end

   		collection do #trabajan con todo (tipo con la clase)
   			get :search
   		end 
   	end
 	end

 	resources :photos, controller: 'images'

end

#	GET /patients/17/records/1
# POST
#PUT/PATCH
#DELETE /patients/17

#EJEMPLO

# class Patient
# 	has_many :records
# end

# class Record
# 	belongs_to :patient
# end
