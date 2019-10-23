# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :race
  belongs_to :city
  belongs_to :character_class
  belongs_to :system
end
