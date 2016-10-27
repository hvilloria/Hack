class PeopleController < ApplicationController
	before_action :set_person, only: [:show, :edit, :update, :destroy]

	def index
		@people = Person.all
	end


	def new
		@person = Person.new
	end

	def create
		@people = Person.new(person_params)
		respond_to do |format|
			if @people.save
				if @people.id > 1
					@people.create_bullyings
				end
				format.html { redirect_to @people, notice: 'User was successfully created.' }
			else
				format.html { render :new }
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
