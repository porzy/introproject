# frozen_string_literal: true

class RacesController < ApplicationController
  http_basic_authenticate_with name: 'intro', password: 'password', except: [:index]
  def index
    @races = Race.all
  end

  def show
    @race = Race.find_by_id(params[:id])
  end
end
