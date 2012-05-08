class ContactMailer < ActionMailer::Base
  helper "spree/base"

  def message_email(message)
    subject = "#{Spree::Config[:site_name]} - #{t('message_from')} #{message.email}"

    @message = message
    mail(:to => message.topic.email, :subject => subject, :reply_to => message.email) 
  end
end
