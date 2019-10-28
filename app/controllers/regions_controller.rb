# frozen_string_literal: true

class RegionsController < ApplicationController
  http_basic_authenticate_with name: 'intro', password: 'password', except: [:index]
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find_by_id(params[:id])
  end
end
