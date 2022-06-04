class AddPartnerToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :partner, :integer
  end
end
