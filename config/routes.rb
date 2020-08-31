Rails.application.routes.draw do
  devise_for :accounts, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'accounts#index'
  get '/dashboard' => "accounts#index", :as => :account_root

  resources :posts, only: [:new, :create, :show]
  
  root to: "public#index"

end
