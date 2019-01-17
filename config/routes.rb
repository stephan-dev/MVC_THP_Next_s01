# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # root 'administration/items#index'

  get 'home', to: 'home#index'
  get '/', to: 'home#index'

  namespace 'administration' do
    get '/', to: 'items#index'

    resources :items
  end
end
