class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.date :date
      t.string :place
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
