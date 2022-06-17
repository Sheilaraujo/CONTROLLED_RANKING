class RemoveGamesIdFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_reference :teams, :game, null: false, foreign_key: true
  end
end
