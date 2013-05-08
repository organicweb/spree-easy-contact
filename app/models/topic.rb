class Topic < ActiveRecord::Base
  
  attr_accessible :name, :email
  
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true
  
end
