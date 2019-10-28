# frozen_string_literal: true

class EsCharactersController < ApplicationController
  def index
    @es_characters = Es_character.all
  end

  def show
    @es_characters = Es_Character.find_by_id(params[id])
  end

  def about; end
end
