# frozen_string_literal: true

Rails.application.routes.draw do
  get '/characters', to: 'characters#index'
  get '/characters/:id', to: 'characters#show', id: /\d+/
  root to: 'characters#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
