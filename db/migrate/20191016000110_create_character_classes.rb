class CreateCharacterClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.string :primaryStat

      t.timestamps
    end
  end
end
