Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  
  resources :contacts, :only => [:new, :create]
  
  match "contact" => "contacts#new"
  
end

Spree::Core::Engine.routes.prepend do
  
  namespace :admin do 
    resources :contacts
    resources :topics
  end
  
end