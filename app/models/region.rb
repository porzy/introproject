# frozen_string_literal: true

class Region < ApplicationRecord
  has_one :race
  has_many :city
end
