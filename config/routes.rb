Rails.application.routes.draw do

  get 'athletes/index'
root 'lists#index'
 resources :lists do
  resources :weights
 end 

 resources :weights do
  resources :athletes
 end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
