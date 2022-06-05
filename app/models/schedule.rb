class Schedule < ApplicationRecord
  belongs_to :user
  validates :date, :place, presence: true

  # def date_place?
  #   each_for schedule do |s|
  #     if (s.user_id == @schedule.user_id) then
  #       if (s.date == @schedule.date)
  # end
end
