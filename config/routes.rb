Rails.application.routes.draw do
  get '/confirmation', to: "pages#confirmation"
  get '/profile', to: "pages#profile"
  get '/about', to: "pages#about"
  devise_for :users do
    resources :reservations, only: [:index]
  end
  root to: 'pages#home'
  resources :animals do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
