class UserMailer < ActionMailer::Base
  default from: "angela.mikulasev@hotmail.com"

  def welcome_email(user)
  	@user = user
  	@url = "https://sydneysister.herokuapp.com/"
  	mail(to: @user.email, subject: "Welcome to Sydney Sister" )
  end
end
