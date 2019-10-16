class CreateGameSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :game_systems do |t|
      t.string :name
      t.string :company
      t.string :input

      t.timestamps
    end
  end
end
