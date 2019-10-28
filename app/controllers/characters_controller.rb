# frozen_string_literal: true

class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @characters = Character.find_by_id(params[id])
  end
end
