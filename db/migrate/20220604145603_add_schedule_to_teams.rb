class AddScheduleToTeams < ActiveRecord::Migration[6.1]
  def change
    add_reference :teams, :schedule, null: false, foreign_key: true
  end
end
