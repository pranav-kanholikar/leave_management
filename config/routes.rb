Rails.application.routes.draw do
  
  

 
  resources :employers do
    resources :employees do
      resources :leaves
    end
  end

  devise_for :users, :controllers => {registrations: 'registrations'}

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "employees#index"

end
