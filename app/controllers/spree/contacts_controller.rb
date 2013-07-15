class Spree::ContactsController < Spree::StoreController
  
  helper "spree/products"
  
  def new
    @contact = Spree::Contact.new
  end
  
  def create
    @contact = Spree::Contact.new(params[:contact])
    
    if @contact.save
      #todo mailer here
      
      redirect_to(spree.root_path, :notice => t('spree.contacts.notices.success'))
    else
      render :new
    end
  end
  
  private
  def accurate_title
    t('spree.contacts.new.contact')
  end
  
end