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
  	if data[:user_type] == "Teen"
  		@user = Teen.create data
  	else 
    	@user = Teacher.create data
    end

    if @user
      redirect_to root_url, status: 303
    else
      render :new
    end
  end

  def destroy
    user = User.find params[:id]
    user.destroy

    redirect_to users_path, status: 303
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_type)
  end


end
