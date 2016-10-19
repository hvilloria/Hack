class PeopleController < ApplicationController
  
  def index
  	render json: Person.all
  end

  def create
  	@person= Person.new
  	@person.email = params[:email]
  	@person.password = params[:password]
  	if @person.save then
  		render json: @person
  	else
  		render json: {"error" => @person.errors, "code" => 400}
  	end
  end

  def show
    @person= Person.find(params[:id])
    render json: {person: @person, profile: @person.profile}
  end

  def update
  end

  def destroy
  end
end
