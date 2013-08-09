class UsersController < ApplicationController

	# before_action :is_authenticated, :except => []
	# TODO except new and create  
  def index
    @users = User.all
  end

  def new
    @user = User.find_by_code params[:code]   
  end

  def create
  	data = user_params
    @registrant = User.find_by_code params[:code]

  	if data[:user_type] == "Teen"
  		@user = Teen.new data
  	else 
    	@user = Teacher.new data
    end

    @user.email = @registrant.email

    if @user.save
      @registrant.destroy
      redirect_to root_url
    else
      render :new, error: @user.errors
    end
  end

  def destroy
    user = User.find params[:id]
    user.destroy

    redirect_to users_path, status: 303
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :user_type)
  end


end
