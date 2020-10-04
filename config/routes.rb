# frozen_string_literal: true

Rails.application.routes.draw do
  get 'products', to: 'products#index', as: 'home'

  resources :products, only: [:index]

  namespace :admins do
    resources :products, only: %i[update destroy create index]
  end

  post 'clients/login', to: 'clients#login'

  resources :clients

  post 'admins/login', to: 'admins#login'

  resources :admins
end
