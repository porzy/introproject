class City < ApplicationRecord
  has_many :characters
  belongs_to :region
end
