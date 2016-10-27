class BullyingsController < ApplicationController
before_action :set_bullying, only: [:show, :edit, :update, :destroy]

  def index
    @person = Person.find(params[:person_id])
		@bullying = @person.bully
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

  def edit
  end

  def update
    respond_to do |format|
      if @bullying.update(bullying_params)
        format.html { redirect_to @bullying, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @bullying }
      else
        format.html { render :edit }
        format.json { render json: @bullying.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @bullying.destroy
       respond_to  do |format|
        format.html { redirect_to person_bullyings_path(@person), notice: 'Bullying was successfully eliminated.' }
        format.json { render :show, status: :ok, location: @bullying }
      end
  end


  private

  def bullying_params
    params.require(:bullying).permit(:description)
  end

  def set_bullying
    @bullying = Bullying.find(params[:id])
  end

end
