class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  acts_as_authentic
  def deliver_password_reset_instructions!
  reset_perishable_token!
  PasswordResetMailer.reset_email(self).deliver_now
end
def feed
  Micropost.where("user_id = ?", id)
end
end
