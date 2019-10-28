# frozen_string_literal: true

class CitiesController < ApplicationController
  http_basic_authenticate_with name: 'intro', password: 'password', except: [:index]
  def index
    @cities = City.all
  end

  def show
    @city = City.find_by_id(params[:id])
  end
end
