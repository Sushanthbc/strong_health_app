Rails.application.routes.draw do
  root 'sessions#index'
  post '/session' => 'sessions#create'
end
