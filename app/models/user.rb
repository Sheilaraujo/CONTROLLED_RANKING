class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :last_name, :email, presence: true
  has_many :schedules

<<<<<<< HEAD
  # include PgSearch::model
  #   multisearchable against: [:name, :difficulty]
=======
  # include PgSearch::Model
  # pg_search_scope :search_date_place,
  #   against: [:name, :difficuly],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
>>>>>>> b3fafde64a9d73b94346e4a639d9ba13083adc3f
end
