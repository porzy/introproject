# frozen_string_literal: true

class City < ApplicationRecord
  has_many :characters
  belongs_to :region
end
