# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :administration do
    get 'users/show'
  end
  devise_for :admins
  devise_for :users

  get 'home', to: 'home#index'
  root 'home#index'

  namespace 'administration' do
    get '/', to: 'items#index'
    root 'administration/items#index'
    get 'users/index', to: 'users#index'
    post 'users/sendpromo', to: 'users#sendpromo'

    resources :items
  end
end
