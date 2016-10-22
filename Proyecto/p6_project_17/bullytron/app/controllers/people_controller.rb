class PeopleController < ApplicationController
	before_action :set_person, only: [:show, :edit, :update, :destroy]
	
	def index
		@people = Person.all
	end


	def new
		@person = Person.new
	end

	def create
		@person = Person.new
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'User was successfully created.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :create }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end		
	end

	def show
		
	end


	private

	def person_params
		params.require(:person).permit(:name,:lastname,:photo)	
	end

	def set_person
		@person = Person.find(params[:id])
	end

end
