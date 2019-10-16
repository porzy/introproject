class CharacterClass < ApplicationRecord
  validates :name :primaryStat presence:true
end
