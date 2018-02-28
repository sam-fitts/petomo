Rails.application.routes.draw do
  get '/profile', to: "pages#profile"
  devise_for :users
  root to: 'pages#home'
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
