module Spree
  module Admin
    class ContactsController < ResourceController
      helper 'spree/admin/contacts'
  
      respond_to :html
      
      def create
        @contact = Contact.new(params[:contact])
        if no_bees and @contact.save
          redirect_to root_path, :notice => t(".success_message")
        else
          render :new
        end
      end
      
      protected
      def no_bees
        params[:easy_honey].blank?
      end

    end
  end
end