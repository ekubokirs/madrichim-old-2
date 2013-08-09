class SessionController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    user = User.all(:email => params[:email]).first
    puts user.inspect
    if params[:email].blank?
      flash[:alert] = "Please Enter E-mail"
      render :new
    elsif user
      if params[:password].blank?
        user.code = SecureRandom.urlsafe_base64
        user.expires_at = Time.now + 4. hours
        user.save

        PasswordMailer.reset_email(user).deliver
        flash[:alert] = "Reset E-mail Sent!"
        render :new
      else
        user = User.authenticate(params[:email], params[:password])
        puts params[:email]
        puts params[:password]
        if user
          session[:user_id] = user.id
          redirect_to root_url :code
          flash[:notice] = "You've Logged In!" and return
        else
          render :new
          flash[:alert] = "Incorrect Password"
        end
      end
    elsif
      user = User.new
      user.code = SecureRandom.urlsafe_base64
      user.expires_at = Time.now + 4. hours
      user.email = params[:email]
      user.save

      PasswordMailer.registration_email(user).deliver
      flash[:alert] = "Registration E-mail Sent!"
      render  :new
    end 
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url
  end
end