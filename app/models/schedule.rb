class Schedule < ApplicationRecord
  belongs_to :user
  validates :date, :place, presence: true
end
