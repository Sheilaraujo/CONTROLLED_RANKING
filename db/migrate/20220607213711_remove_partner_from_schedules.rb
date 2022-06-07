class RemovePartnerFromSchedules < ActiveRecord::Migration[6.1]
  def change
    remove_column :schedules, :partner
  end
end
