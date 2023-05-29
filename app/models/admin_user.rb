class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable


	# after_create :send_welcome_email

	# private

	# def send_welcome_email
	# 	UserMailer.welcome_email(self).deliver_now
	# end
end
