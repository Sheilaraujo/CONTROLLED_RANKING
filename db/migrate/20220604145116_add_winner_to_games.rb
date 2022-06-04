class AddWinnerToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :winner, :boolean, default: false
  end
end
