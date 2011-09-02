class Admin::ContactsController < Admin::BaseController
  def index
    @contacts = Contacts.all
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
