class UserMailer < ActionMailer::Base
  default :from => ENV["DEFAULT_MAILER_SENDER"]
  
  def welcome_email(user)
    mail(:to => user.email, :subject => "Invitation Request Received")
  end
end