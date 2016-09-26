class SchoolsController < ApplicationController
	before_filter :authenticate_user!
	before_action :find_user,only: [:update,:destroy]
	def create
		@school = School.new(user_school_params)
		if @school.save
			render json: @school, status: 201
		else
			render json: {error: @school.errors.full_messages}, status: 400
		end
	end
	def index
		@school = School.all
		render json: @schools
	end

	def update
		
		@school = School.find(params[:id])
		if @school.update(user_school_params)
		 render json: @school, status: 200
		else
			render json: {error: @school.errors.full_messages}, status: 400
		end

	end

	def destroy

		@school = School.find(params[:id])
		if @school.destroy
		 render json: {} ,status: 204
		else
			render json: {error: @school.errors.full_messages}, status: 400
		end
	end


	private
	def find_user
		@school = School.find(params[:id])
	end

	def user_school_params
		params.require(:school).permit(:name, :address,
			user_attributes: [
				:full_name,
				:email,
				:password

			] )	
	end

	def school_params
		params.require(:school).permit(:name,:address)		
	end

end