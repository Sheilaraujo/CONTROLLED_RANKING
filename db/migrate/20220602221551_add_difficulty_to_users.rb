class AddDifficultyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :difficulty, :string
  end
end
