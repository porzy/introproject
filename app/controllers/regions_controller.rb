# frozen_string_literal: true

class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show; end
end
