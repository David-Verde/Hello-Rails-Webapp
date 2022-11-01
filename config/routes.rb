# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'hello', to: 'greetings#random_greeting'
    end
  end
  root 'root#index'
end
