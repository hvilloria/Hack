class ContactsController < ApplicationController
  
  def index

  	if params.has_key?(:name)
  		@contacts = Contact.where(search_params)
  		redirect_to 'found'
  	else
  		@contacts = Contact.all
  	end
  	#render plain: @contacts.inspect
  end

  def show
  	@contact = Contact.find params[:id]
  end

  def delete
  end

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		redirect_to :root
  	 #redirect_to @contact
  	else
  		render 'new'
  	end
  end

  def edit	
  end

  def update
  end

  def destroy  	
  end

  private

  def contact_params
  	params.require(:contact).permit(:name,:lastname,:phone,:email,:birthdate,:gender,:profile_picture)
  end

  def search_params
  	params.permit(:name)
  end
end
