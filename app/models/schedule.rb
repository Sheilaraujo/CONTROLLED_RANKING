class Schedule < ApplicationRecord
  belongs_to :user
  validates :date, :place, presence: true
  validates :date, uniqueness: { scope: :place,
    message: "Esta data já foi cadastrada" }

  include PgSearch::Model
  pg_search_scope :search_date_place,
    against: [:date, :place],
    using: {
      tsearch: { prefix: true }
    }


end
