# frozen_string_literal: true

class GameSystemsController < ApplicationController
  def index
    @game_systems = Game_system.all
  end

  def show; end
end
