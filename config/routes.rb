Rails.application.routes.draw do
  resources :bathrooms do
    collection do
      get :my_bathrooms
    end
    resources :bookings, only: %i[create show]
  end
  devise_for :users
  resources :bookings, only: %i[index]
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
