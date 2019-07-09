# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :terms

    root to: "users#index" do
    root to: "terms#index"
    end
  end
  root to: "visitors#index"
  devise_for :users
  resources :users, :terms
end
