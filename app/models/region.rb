class Region < ApplicationRecord
  has_many :characters
  has_one :race
  has_one :city


end
