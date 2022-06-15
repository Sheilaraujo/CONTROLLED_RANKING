class AddStatusOnTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :status, :string, null: false, default: "standby"
  end
end
