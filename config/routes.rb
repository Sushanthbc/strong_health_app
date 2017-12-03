Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root 'sessions#index'
  post '/session' => 'sessions#create'
  # we use namespace for prefixing all URL with api/
  post '/user/authentication' => 'users#authentication'
  resource :users
end
