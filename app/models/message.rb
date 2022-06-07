# class Message < ApplicationRecord
#   belongs_to :user
# end
# seguindo este site:
# https://dev.to/drbragg/rails-design-patterns-form-object-4d47
# ass.: Cintia

class Message
  include ActiveModel::Model

  attr_accessor :to, :subject, :body

  # eu criei esta referencia
  belongs_to :user
  #

  validates :to, :subject, :body, presence: true
  validates :subject, length: { maximum: 255 }

  def save
    return false unless valid?

    DummyMailer.message(to: to, subject: subject, body: body).deliver_later
  end
end
