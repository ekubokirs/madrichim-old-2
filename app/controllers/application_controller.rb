class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_teen?
  helper_method :is_teacher?
  helper_method :is_admin?

  def current_user
  	@current_user ||= User.find(id: session[:registrant_id])
  end

  def is_authenticated
  	redirect_to login_url unless current_user
  end

  def is_teen?
  	current_user && @current_user.kind_of?(Teen)
  end

  def is_teacher?
  	current_user && @current_user.kind_of?(Teacher)
  end

  def is_admin?
  	current_user && @current_user.kind_of?(Admin)
  end
end
