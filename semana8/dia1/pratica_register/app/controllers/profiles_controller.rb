class ProfilesController < ApplicationController
  def index
    render json: Profile.all #solo para ver que funciono
  end

  def create
    @person = Person.find(params[:person_id])
    @profile = Profile.new(profile_params)

    @profile.person = @person
    if @profile.save then
      render json: @profile
    else
      render json: {"errors": @profile.errors, "code": 500}
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  def profile_params
    #params.require([:profile]).permit(:dni, :name,:lastname,:birthdate,:gender,:car)
    params.permit(:dni, :name,:lastname,:birthdate,:gender,:car)
  end
end
