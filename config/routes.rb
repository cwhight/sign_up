Rails.application.routes.draw do

  require "sidekiq/web"

  root to: 'sign_ups#new'

  get '/job_provider', to: 'sign_ups#job_provider'
  get '/job_seeker', to: 'sign_ups#job_seeker'

  resources :sign_ups, only: :create

  get 'congratulations', to: 'sign_ups#congratulations', as: :congratulations

end
