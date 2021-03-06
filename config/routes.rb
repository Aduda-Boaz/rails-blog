# frozen_string_literal: true

Rails.application.routes.draw do
  get "/", to: "base#index"

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] do
      resources :comments, only: [:index, :show]
    end
  end
end
