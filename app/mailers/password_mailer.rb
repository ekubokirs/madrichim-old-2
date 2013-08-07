class PasswordMailer < ActionMailer::Base
  # Set the default "from" line for these emails
  default from: "no-reply@ctjmb.org"

  # Create the password reset email and pass it
  def reset_email(user)
    @user = user
    
    mail to: @user.email, subject: "Change your CTJ Madrichim credentials"
  end

  # Create new user email and pass it
  def registration_email(user)
    @user = user
    
    mail to: @user.email, subject: "Create your CTJ Madrichim credentials"
  end
end