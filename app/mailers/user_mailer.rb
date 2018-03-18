class UserMailer < ApplicationMailer
  default from: 'organisers@alumnibusinesscamp.net'

  def welcome_email(user)
    @user = user
    @url  = user_url(@user)
    mail(to: @user.email, subject: 'Your link for ABC application system')
  end
end
