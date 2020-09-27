# frozen_string_literal: true

Rails.application.routes.draw do
  get 'products', to: 'products#index', as: 'home'

  resources :products, only: [:update, :destroy, :create, :index]
end
