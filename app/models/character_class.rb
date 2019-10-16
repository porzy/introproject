class CharacterClass < ApplicationRecord
  has_many :characters
  validates :name :primaryStat presence:true
end
