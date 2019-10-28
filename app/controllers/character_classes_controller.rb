# frozen_string_literal: true

class CharacterClassesController < ApplicationController
  http_basic_authenticate_with name: 'intro', password: 'password', except: [:index]
  def index
    @character_classes = CharacterClass.all
  end

  def show
    @character_class = CharacterClass.find_by_id(params[:id])
  end
end
