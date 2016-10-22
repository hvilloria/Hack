class BullyingsController < ApplicationController

  def index
		@bullyings = Bullying.all
	end


	def new
		@bullying = Bullying.new
	end

	def create
		@bullying = Bullying.new
    respond_to do |format|
      if @bullying.create(bullying_params)
        format.html { redirect_to @bullying, notice: 'User was successfully created.' }
        format.json { render :show, status: :ok, location: @bullying }
      else
        format.html { render :create }
        format.json { render json: @bullying.errors, status: :unprocessable_entity }
      end
    end
	end

	def show
  end



  private

  def bullying_params

  end

end
