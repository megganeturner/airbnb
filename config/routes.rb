Rails.application.routes.draw do
  get 'homes/index'

  get 'homes/new'

  get 'homes/edit'

  get 'homes/destroy'

  get 'cities/index'

  get 'cities/new'

  get 'cities/edit'

  get 'cities/destroy'

  get 'bookings/index'

  get 'bookings/destroy'

  get 'bookings/edit'

  get 'bookings/new'

  root :to => 'pages#index'
  resources :users
end
