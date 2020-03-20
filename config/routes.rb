Rails.application.routes.draw do

  require "sidekiq/web"

  root to: 'sign_ups#new'

  resources :sign_ups, only: :create

  get 'congratulations', to: 'sign_ups#congratulations', as: :congratulations

end
