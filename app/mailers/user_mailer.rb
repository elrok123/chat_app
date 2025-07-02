class UserMailer < ApplicationMailer
  default from: 'chat_system@example.com'

  def weekly_email(user)
    @user = user
    mail(to: @user.email, subject: "Weekly Chat User Email")
  end
end
