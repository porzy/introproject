class EsCharacter < ApplicationRecord
  belongs_to :race
  belongs_to :city
  belongs_to :character_class
end
