class SiteController < ApplicationController
  before_action :is_authenticated, only: [:index]

  def index
  	@user = current_user
  	@dashboard = if is_teen?
  		"teen_dashboard"
  	elsif is_teacher?
  		"teacher_dashboard"
  	else
  		"admin_dashboard"
  	end
  end

  def privacy
  end

  def terms
  end
end
