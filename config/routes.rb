# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :terms
  end

  root to: "visitors#index"
  devise_for :users
  resources :users
  resources :terms
end
