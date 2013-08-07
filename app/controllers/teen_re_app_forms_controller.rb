class TeenReAppFormsController < ApplicationController
  before_action :set_teen_re_app_form, only: [:show, :edit, :update, :destroy]

  def index
    @teen_re_app_forms = TeenReAppForm.all
  end

  def show
  end

  def new
    @teen_re_app_form = TeenReAppForm.new
  end

  
  def edit
  end

  
  def create
     @teen_re_app_form = TeenReAppForm.create
  end

  
  def update
  end

 
  def destroy
  end

  private
  
end
