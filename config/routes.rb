Rails.application.routes.draw do
  # get 'reservations/index'

  # get 'reservations/new'

  # get 'reservations/create'

  # get 'reservations/edit'

  # get 'reservations/update'

  # get 'reservations/destroy'

  resources :reservations
  get '/profile', to: "pages#profile"
  get '/about', to: "pages#about"
  devise_for :users
  root to: 'pages#home'
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
