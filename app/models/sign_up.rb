class SignUp < ApplicationRecord
  after_create :send_welcome_email
  has_many :sector_joiners
  has_many :sectors, through: :sector_joiners

  validates :email, presence: true

  private

  def send_welcome_email
    UserMailer.with(sign_up: self).welcome.deliver_now
  end
end
