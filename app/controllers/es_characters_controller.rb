# frozen_string_literal: true

class EsCharactersController < ApplicationController
  def index
    @es_characters = EsCharacter.all
  end

  def show
    @es_character = EsCharacter.find_by_id(params[:id])
  end

  def about; end
end
