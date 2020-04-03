Rails.application.routes.draw do

  require "sidekiq/web"

  get '/provider', to: 'sign_ups#job_provider', as: :provider
  get '/seeker', to: 'sign_ups#job_seeker', as: :seeker

  root to: 'sign_ups#new'

  get '/provider', to: 'sign_ups#provider', as: :provider
  get '/seeker', to: 'sign_ups#seeker', as: :seeker

  resources :sign_ups, only: :create

  get 'congratulations', to: 'sign_ups#congratulations', as: :congratulations

end
