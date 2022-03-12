Rails.application.routes.draw do
  root to: "toilets#index"
  resources :toilets do
    resources :bookings, only: %i[create show index]
  end


  get 'my_toilets', to:'toilets#my_toilets'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
