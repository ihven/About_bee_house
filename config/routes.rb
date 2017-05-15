Rails.application.routes.draw do
 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  
  resources :products
  
  resources :films
  
  resources :galleries
  
  resources :beekeepers
  
  resources :specifications
  
  resources :articles do
     resources :comments
  end
  
  root to: "welcome#index"
  
end
