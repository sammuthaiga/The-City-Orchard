Rails.application.routes.draw do
  resources :users
  resources :fruits, only: [:index, :show,  :create, :update, :destroy]
  resources :clients, only: [:index, :show,  :create, :update, :destroy]
  resources :farmers, only: [:index, :show,  :create, :update, :destroy]
  resources :sessions, only: [:create]


  delete "/logout", to: "sessions#logout"
  get "/logged_in", to: "sessions#log_in"
  
   root to: "static#home"
end
