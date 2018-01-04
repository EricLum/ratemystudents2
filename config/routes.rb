Rails.application.routes.draw do
  resources :chatmessages
  resources :chatboards
  resources :reviews
  resources :students
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
