Rails.application.routes.draw do

  
  root to: 'application#home'

  namespace :api do
    namespace :v1 do

      resources :features do
        resources :posts
      end
      
      resources :categories do
        resources :posts
      end
      
      resources :posts

      resource :users, only: [:index, :create]
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      get "/user_is_authorized", to: "auth#user_is_authorized"

      put "/image_upload", to: "posts#image_upload"
      
    end
  end

end
