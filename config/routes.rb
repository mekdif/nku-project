NkuProject::Application.routes.draw do
  
  resources :users 
  resources :sessions 
  resources :teams 
  resources :games
  
  get "sign_out", to: "sessions#destroy"
  post "comments", to: "games#comment"
  root to: "users#index"
  
end
