class AddPartnerToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :partner, :jsonb, null: false, default: {}
    add_index  :schedules, :partner, using: :gin
  end
end
