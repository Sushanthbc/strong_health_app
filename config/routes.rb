Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root 'sessions#index'
  resources :sessions
  # we use namespace for prefixing all URL with api/
  namespace :api do
    resources :accounts, expect: %i[index new create]
  end
  post '/authenticate' => 'sessions#authentication'
  resource :users
  # React routes
  get '/add_product' => 'sessions#index'
  get '/purchase_entry' => 'sessions#index'
  get '/account_info' => 'sessions#index'
end
