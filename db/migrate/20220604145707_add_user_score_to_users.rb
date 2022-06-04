class AddUserScoreToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_score, :integer, default: 0
  end
end
