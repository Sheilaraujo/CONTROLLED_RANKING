class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.integer :player_1
      t.integer :player_2
      t.integer :score

      t.timestamps
    end
  end
end
