Rails.application.routes.draw do

  root :to => 'pages#index'

  resources :users, :cities, :bookings, :charges



  # get 'homes/:id/book' => 'bookings#new', :as => 'new_booking'
  # post 'homes/:id/book' => 'bookings#create'

  resources :homes do
    resources :bookings, :only => [:new, :create]
  end


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
