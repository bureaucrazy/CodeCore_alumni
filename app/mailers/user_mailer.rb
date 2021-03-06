class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
  def notify_admin(user)
    @user = user
    mail :to => user.email, :subject => "New user been created"
  end

  def notify_users(user)
    @user   = user
    mail(to: @user.email, subject: "CodeCore Alumni")
  end

end
