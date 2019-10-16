class Race < ApplicationRecord
  has_many :characters
  belongs_to :region
end
