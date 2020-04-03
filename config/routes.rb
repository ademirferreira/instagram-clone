# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts, only: %i[index show new create]
end
