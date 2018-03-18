class UserMailer < ApplicationMailer
  default from: 'organisers@alumnibusinesscamp.net'

  def welcome_email(user)
    @user = user
    @url  = '/users/' + @user.id
    mail(to: @user.email, subject: 'Your link for ABC application system')
  end
end
