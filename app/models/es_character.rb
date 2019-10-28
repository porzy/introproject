# frozen_string_literal: true

class EsCharacter < ApplicationRecord
  belongs_to :race
  belongs_to :city
  belongs_to :character_class

  def self.search(search)
    if search
      character = EsCharacter.where('name LIKE ?', "%#{search}%")
      if character
        where(name: character)
      else
        EsCharacter.all
      end
    else
      EsCharacter.all
    end
  end
end
