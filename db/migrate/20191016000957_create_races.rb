class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
