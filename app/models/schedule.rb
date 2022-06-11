class Schedule < ApplicationRecord
  belongs_to :user
  validates :date, :place, presence: true
  validates :date, uniqueness: { scope: :place,
    message: "esta data já foi cadastrada" }

    include PgSearch::Model
    multisearchable against: [:date, :place]

end
