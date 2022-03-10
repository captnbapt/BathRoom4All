Rails.application.routes.draw do
  resources :toilets
  get 'my_toilets', to:'toilets#my_toilets'
  resources :bookings, only: %i[create show]
  devise_for :users
  resources :bookings, only: %i[index]
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
