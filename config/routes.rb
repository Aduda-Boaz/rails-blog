# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[:index, :show] do
    resources :posts, only: %i[:index, :show] do
      resources :comments, only: %i[:index, :show, :new, :create]
      resources :likes, only: %i[:index, :show, :new, :create]
    end
  end
  root to: "base#index"
end
