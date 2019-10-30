Rails.application.routes.draw do
  root to: 'customers#index'
  resources :customers do
    member do
      post :to_whitelist
      post :to_blacklist
      get :to_whitelist
      get :to_blacklist
      # post :create
    end
  end
  # post "customers/:id" => "customers#to_blacklist"
  # post "customers/:id/whitelist" => "customers#to_whitelist"
  get "blacklist" => "customers#show_blacklisted"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
