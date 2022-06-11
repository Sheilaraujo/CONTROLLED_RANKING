class Game < ApplicationRecord
  belongs_to :team

  # include PgSearch::model
  #   multisearchable against: [:date, :place]
end
