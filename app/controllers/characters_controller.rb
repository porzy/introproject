# frozen_string_literal: true

class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show; end
end
