class UserMailer < ActionMailer::Base
  default :from => "brian@sociabo.com"

  def welcome_email(user)
    @user = user
    @url  = "http://m.sociabo.com/"
    mail(:to => user,
         :subject => "Just have fun with Sociabo!")
  end

  def sms_email(selfemail, phone)
    @selfemail = selfemail
    @phone = phone
    mail(:to => selfemail,
         :subject => "Send SMS to " + phone)
  end
end
