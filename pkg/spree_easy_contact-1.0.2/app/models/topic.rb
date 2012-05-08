class Topic < ActiveRecord::Base
  
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true
  
end