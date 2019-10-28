# frozen_string_literal: true

class CharacterClassesController < ApplicationController
  def index
    @character_classes = Character_class.all
  end

  def show
    @character_class = Character_class.find(params[id])
  end
end
