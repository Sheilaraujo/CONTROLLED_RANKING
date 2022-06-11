class Game < ApplicationRecord
  belongs_to :team

  include PgSearch::Model
    multisearchable against: [:date, :place]
end
