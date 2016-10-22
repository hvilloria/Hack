class ContactsController < ApplicationController
  def index
    if params.has_key?(:name)
      @contacts = Contact.where(search_param)

      # Me di cuenta de que simplemente podia devolver los registros encontrados
      # en la misma vista en lugar de hacer el redirect a una vista nueva.
      #redirect_to contacts_found_path(contacts: @contacts)
    else
      @contacts = Contact.all
    end
  end

  def found
  end

  def show
    @contact = Contact.find params[:id]
  end

  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to :root
      # redirect_to @contact
    else
      render 'new'
    end
  end

  def edit
  end
  def update
  end

  def delete
  end
  def destroy
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :mobile, :phone, :email, :email2, :gender, :birthdate, :avatar)
  end

  def search_param
    params.permit(:name)
  end
end
