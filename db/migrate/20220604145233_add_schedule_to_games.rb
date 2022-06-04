class AddScheduleToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :schedule, null: false, foreign_key: true
  end
end
