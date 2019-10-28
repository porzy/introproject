# frozen_string_literal: true

class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find_by_id(params[id])
  end
end
