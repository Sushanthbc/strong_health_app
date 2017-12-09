Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root 'sessions#index'
  resources :sessions
  # we use namespace for prefixing all URL with api/
  post '/authenticate' => 'sessions#authentication'
  resource :users
end
