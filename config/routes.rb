Rails.application.routes.draw do
  # Add your extension routes here
  
  resources :contacts, :controller => 'contacts'
  
  namespace :admin do
    resources :contacts
    resources :topics
  end
end
