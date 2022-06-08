class RemoveScheduleFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :schedule_id
  end
end
