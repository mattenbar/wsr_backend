Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      
      resources :categories do
        resources :posts
      end
      
      resources :posts
      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
