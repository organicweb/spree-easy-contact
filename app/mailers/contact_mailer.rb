module Spree
  class ContactMailer < ActionMailer::Base
    
    def notification contact
      @contact = contact
      
      mail(
        :to => contact.topic.email,
        :reply_to => contact.email,
        :from => mail_from,
        :subject => "#{Spree::Config[:site_name]} : #{contact.topic.title}"
      )
    end
    
    def confirmation contact
      @contact = contact
      
      mail(
        :to => contact.email,
        :reply_to => site_owner_email,
        :from => mail_from,
        :subject => "#{Spree::Config[:site_name]} : #{contact.topic.title}"
      )
    end
    
    private
    def mail_from
      Spree::Config[:mails_from]
    end
  
    def site_owner_email
      Spree::Config[:mails_from]
    end
  end
end