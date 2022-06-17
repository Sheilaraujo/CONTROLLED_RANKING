class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :last_name, :email, presence: true
  has_many :schedules

  # include PgSearch::Model
  # pg_search_scope :search_date_place,
  #   against: [:name, :difficuly],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
