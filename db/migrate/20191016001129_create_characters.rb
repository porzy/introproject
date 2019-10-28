# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :race, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :character_class, null: false, foreign_key: true
      t.references :game_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
