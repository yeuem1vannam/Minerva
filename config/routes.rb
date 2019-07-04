# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :terms
    resources :phrases

    root to: "users#index" do
    root to: "terms#index"
    root to: "phrase#index"
    end
  end

  root to: "visitors#index"
  devise_for :users
  resources :users, :terms, :phrases
end
