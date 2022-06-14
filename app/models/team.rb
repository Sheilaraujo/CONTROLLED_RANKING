class Team < ApplicationRecord
  validates :player_1, :player_2, :place, presence: true
end
