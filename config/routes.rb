Rails.application.routes.draw do
  match '/contact-us' => 'contacts#new', :as => :contact
  
  resources :contacts, :controller => 'contacts'
  
  namespace :admin do
    resources :contacts
    resources :topics
  end
end
