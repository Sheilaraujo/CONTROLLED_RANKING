class AddResultToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :result, :string
  end
end
