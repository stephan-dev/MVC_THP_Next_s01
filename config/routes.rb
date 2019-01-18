# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  get 'home', to: 'home#index'
  root 'home#index'

  namespace 'administration' do
    get '/', to: 'items#index'
    root 'administration/items#index'

    resources :items
  end
end
