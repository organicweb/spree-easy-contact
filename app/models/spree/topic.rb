module Spree
  class Topic < ActiveRecord::Base
  
    has_many :contacts
  
    attr_accessible :active, :email, :title
    
    validates :title, :email, :presence => true
    
  end
end