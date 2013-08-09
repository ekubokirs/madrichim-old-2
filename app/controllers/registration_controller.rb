class RegistrationController < ApplicationController
	def new
		@teen = Teen.new
		@teacher = Teacher.new
	end

	def create
		if params[:teen]
			@teen = Teen.create
			redirect_to root_url
		elsif params[:teacher]
			@teacher = Teacher.create
			redirect_to root_url
		else
			redirect_to login_url
		end
	end
end
