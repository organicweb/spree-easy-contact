class Admin::ContactsController < Admin::BaseController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
