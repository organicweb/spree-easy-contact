class ContactsController < Spree::BaseController
  before_filter :load_topics
  
  def new
    @contact = Contact.new
  end
  
  def edit
    redirect_to new_contact_path
  end
  
  def create
    @contact = Contact.new(params[:contact] || {})
    respond_to do |format|
      if verify_recaptcha(model: @contact) && @contact.valid? &&  @contact.save
        ContactMailer.message_email(@contact).deliver
        format.html { redirect_to(root_path, :notice => t("message_sended")) }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  private
  def load_topics
    @topics = Topic.all
  end
end