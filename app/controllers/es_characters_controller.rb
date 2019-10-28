# frozen_string_literal: true

class EsCharactersController < ApplicationController
  def index
    if params[:search]
      character = EsCharacter.where('name LIKE ?', "%#{params[:search]}%")
      @es_characters = character || EsCharacter.all
    else
      @es_characters = EsCharacter.all
    end
  end

  def show
    @es_character = EsCharacter.find_by_id(params[:id])
  end

  def about; end

  def character_params
    params.require(:es_character).permit(:name, :search)
  end
end
