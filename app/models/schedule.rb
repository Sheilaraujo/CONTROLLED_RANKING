class Schedule < ApplicationRecord
  belongs_to :user
  validates :date, :place, presence: true
  validates :date, uniqueness: { scope: :place,
    message: "Esta data já foi cadastrada" }

    include PgSearch::model
    pg_search_scope :search_user,
    against: [ :date, :place ],
    associated_against: {
      user: [ :name, :difficulty ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
