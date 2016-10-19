class PhonesController < ApplicationController
  def index
    
      @person = Person.find(params[:person_id])
    if params.has_key?(:position) then
      render json: @person.profile.phones[params[:position].to_i-1]
    else
      render json: @person.profile.phones
    end
    
    @person.profile.phones
    #render json: Phone.find(params[person_id])
  end

  def create
    @pers = Person.find(params[:person_id])
    @phon = Phone.new

    @phon.phone_number = params[:phone_number]
    @phon.profile = @pers.profile
    if @phon.save then
      render json: @phon
    else 
      #render json: {@}
    end
  end

  def show
    (params[:person_id]).profile
  end

  def update
  end

  def destroy
  end
end
