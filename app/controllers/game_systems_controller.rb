# frozen_string_literal: true

class GameSystemsController < ApplicationController
  def index
    @game_systems = Game_system.all
  end

  def show
    @Game_system = Game_system.find_by_id(params[id])
  end
end
