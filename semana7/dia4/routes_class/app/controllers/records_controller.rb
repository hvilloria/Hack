class RecordsController < ApplicationController

		def index		
		@record = Record.all
	end
  
  def show
  	
  	@patient = Patient.find(params[:patient_id])
  	@patient.records.where(id: params[:id]).take

  end

	def new
	
  	@patient = Patient.find(params[:patient_id])
  	@patient.records.build
		
	end

	def create
		@record = Record.new(params[:records]) #{name: "Carlos", last_name: "Torrealba"}
		
		if @record.save
			#Vamos a show
		elserecord
			#Muestrame los errores
		end
		
	end

	def destroy		
		@record = Record.find(params[:id])
		@record.destroy
		#vamos al index
	end

	def edit		
		@record = Record.find(params[:id])
	end


	def update
		@record = Record.find(params[:id])
		if @record.update(params[:record_id])
			#vamos al show
		else
			#muestrame los errores
		end
	end
	def print
		
	end
end
