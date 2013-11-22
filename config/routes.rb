Spree::Core::Engine.routes.prepend do
  
  namespace :admin do 
    resources :contacts
    resources :topics
  end
  
  resources :contacts, :only => [:new, :create]
  
  match "contact" => "contacts#new"
  
end