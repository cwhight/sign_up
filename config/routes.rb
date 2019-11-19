Rails.application.routes.draw do
  devise_for :users
  root to: 'jobs#index'
  resources :jobs do
    resources :shifts do
      resources :requests, except: [:show]
    end
  end

  post 'shifts/:shift_id/reviews', to: 'reviews#create', as: :shift_reviews

  get '/dashboard', to: 'pages#dashboard'

  resources :users, only: [:edit, :update]

  resources :requests, only: [:show] do
    patch 'requests/:id/accept_request', to: 'shifts#accept_request', as: 'accept_request'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
