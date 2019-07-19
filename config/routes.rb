# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
<<<<<<< HEAD
    resources :phrases
=======
    resources :terms
>>>>>>> 0a55eaeb83119e398846c1cbd88dfcbcc0232fef
  end

  root to: "visitors#index"
  devise_for :users
  resources :users
end
