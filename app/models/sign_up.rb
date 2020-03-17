class SignUp < ApplicationRecord
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.with(sign_up: self).welcome.deliver_now
  end
end
