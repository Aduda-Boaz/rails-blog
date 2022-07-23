# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "base#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:new, :create]
    end
  end
  resources :login, only: [:index, :show] do
    resources :sessions, only: [:new, :create]
  end
end
