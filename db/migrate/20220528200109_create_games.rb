class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :result
      t.references :team, null: false, foreign_key: true
      t.date :date
      t.string :place

      t.timestamps
    end
  end
end
