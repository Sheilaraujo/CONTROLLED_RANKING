class RemoveResultFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :result
  end
end
