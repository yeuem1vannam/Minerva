# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :phrases

    root to: "users#index" do
    root to: "phrase#index"
    end
  end

  root to: "visitors#index"
  devise_for :users
  resources :users
  resourcee :phrases
end
