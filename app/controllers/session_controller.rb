class SessionController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	 if params[:email].blank?
      flash[:alert] = "Please Enter E-Mail"
      render :new
    
    else
      #execute this if the password is blank
      if params[:password].blank?
        #find the user by these parameters
        user = User.find(:email => params[:email])
        puts user.inspect

        if user
          #generate random code
          user.code = SecureRandom.urlsafe_base64
          user.expires_at = Time.now + 48. hours
          #the code expires at a certain time from time sent
          user.save

          #calls mailer/password_mailer.rb to send reset email
          PasswordMailer.reset_email(user).deliver

        else 
          #defines the variable user as something new
          user = User.new
          user.code = SecureRandom.urlsafe_base64
          user.expires_at = Time.now + 48. hours
          #defines what the user email is for the mailer
          user.email = params[:email]
          user.save
          
          PasswordMailer.registration_email(user).deliver
        end
        
      render :new

      # if there is a password then the following executes
      else
        user = User.authenticate(params[:email], params[:password])

        #logs in user if email and password exist 
        puts params[:email]
        puts params[:password]
        if user
          session[:user_id] = user.id
          redirect_to root_url :code, flash[:alert] = "You've Logged In!" and return
        end
        render :new
      end
    end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url
  end
end