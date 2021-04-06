Rails.application.routes.draw do

  
  
  root to: 'application#home'

  

      resources :ads

      resources :pointcps do
        resources :pointcpvotes
      end
      resources :pointcpvotes

      resources :features do
        resources :posts
      end

      resources :showads do
          resources :ads
      end
      
      resources :categories do
        resources :posts
      end
      
      resources :posts do 
        resources :postvotes
      end
      
      resources :postvotes

      resources :users, only: [:index, :create]
      
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      get "/user_is_authorized", to: "auth#user_is_authorized"

      put "/image_upload", to: "posts#image_upload"
      put "/image_upload_pointcp", to: "pointcps#image_upload"
      put "/image_upload_ads", to: "ads#image_upload"
      
    

end
