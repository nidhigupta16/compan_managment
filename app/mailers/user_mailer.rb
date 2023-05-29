class UserMailer < ApplicationMailer
 	def welcome_email(user)
		@user = user
		mail(from: 'guptanidhi6116@gmail.com', to: @user.email, subject: 'Welcome to My App')
	end
end
