# frozen_string_literal: true

Rails.application.routes.draw do
  get 'characters/index'
  get 'characters/show'
  get 'game_systems/index'
  get 'game_systems/show'
  get 'character_classes/index'
  get 'character_classes/show'
  get 'races/index'
  get 'races/show'
  get 'cities/index'
  get 'cities/show'
  get 'regions/index'
  get 'regions/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
