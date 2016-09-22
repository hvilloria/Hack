class PatientsController < ApplicationController

	def index		
		@patient = Patient.all
	end
  
  def show
  	@patient = Patient.find(params[:id])
  end

	def new
	@patient = Patient.new		
	end

	def create
		@patient = Patient.new(params[:patients]) #{name: "Carlos", last_name: "Torrealba"}
		
		if @patient.save
			#Vamos a show
		else
			#Muestrame los errores
		end

	end

	def destroy		
		@patient = Patient.find(params[:id])
		@patient.destroy
		#vamos al index
	end

	def edit		
		@patient = Patient.find(params[:id])
	end


	def update
		@patient = Patient.find(params[:id])
		if @patient.update(params[:patient_id])
			#vamos al show
		else
			#muestrame los errores
		end
	end

end