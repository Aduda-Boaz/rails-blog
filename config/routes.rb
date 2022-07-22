# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] do
      resources :comments, only: [:index, :show, :new, :create]
      resources :likes, only: [:index, :show, :new, :create]
    end
  end
  root to: "base#index"
end
