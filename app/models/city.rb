class City < ApplicationRecord
  has_many :es_characters
  belongs_to :region
end
