# frozen_string_literal: true

Rails.application.routes.draw do
  get '/character_classes', to: 'character_classes#index'
  get '/character_classes/:id', to: 'character_classes#show', id: /\d+/
  get '/races', to: 'races#index'
  get '/races/:id', to: 'races#show', id: /\d+/
  get '/game_systems', to: 'game_systems#index'
  get '/game_systems/:id', to: 'game_systems#show', id: /\d+/
  get '/cities', to: 'cities#index'
  get '/cities/:id', to: 'cities#show', id: /\d+/
  get '/regions', to: 'regions#index'
  get '/regions/:id', to: 'regions#show', id: /\d+/
  get '/characters', to: 'es_characters#index'
  get '/characters/:id', to: 'es_characters#show', id: /\d+/
  get '/about', to: 'es_characters#about'
  root to: 'es_characters#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
