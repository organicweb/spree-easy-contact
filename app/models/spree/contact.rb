module Spree
  class Contact < ActiveRecord::Base
    belongs_to :topic
    attr_accessible :email, :message, :name, :topic_id, :order_number
  
    validates :name, :email, :topic_id, :message, :presence => true
  end
end
