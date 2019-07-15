Rails.application.routes.draw do
  devise_for :users
  root to: 'animals#index'
  resources :users, only: [] do
    resources :animals, only [:index, :new, :create]
  end
  resources :animals, except: [:index, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:index, :new, :create] do
    resources :reviews. only: [:create]
  end
end
