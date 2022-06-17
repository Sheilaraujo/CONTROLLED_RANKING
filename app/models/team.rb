class Team < ApplicationRecord
  STATUS = %w[standby confirmed initialized]
  validates :player_1, :player_2, :status, presence: true
end
