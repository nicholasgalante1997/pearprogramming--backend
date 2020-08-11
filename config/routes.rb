Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users 
      resources :posts 
      resources :comments 
      resources :challenges 
      resources :my_challenges 
      resources :notes 

      post "/signup", to: "users#create"
      post "/login", to: "auth#login"

      get "/auto_login", to: "auth#auto_login"
    end 
  end 
end
