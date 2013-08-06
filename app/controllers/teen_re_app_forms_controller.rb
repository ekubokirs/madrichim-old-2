class TeenReAppFormsController < ApplicationController
  before_action :set_teen_re_app_form, only: [:show, :edit, :update, :destroy]

  # GET /teen_re_app_forms
  # GET /teen_re_app_forms.json
  def index
    @teen_re_app_forms = TeenReAppForm.all
  end

  # GET /teen_re_app_forms/1
  # GET /teen_re_app_forms/1.json
  def show
  end

  # GET /teen_re_app_forms/new
  def new
    @teen_re_app_form = TeenReAppForm.new
  end

  # GET /teen_re_app_forms/1/edit
  def edit
  end

  # POST /teen_re_app_forms
  # POST /teen_re_app_forms.json
  def create
    @teen_re_app_form = TeenReAppForm.new(teen_re_app_form_params)

    respond_to do |format|
      if @teen_re_app_form.save
        format.html { redirect_to @teen_re_app_form, notice: 'Teen re app form was successfully created.' }
        format.json { render action: 'show', status: :created, location: @teen_re_app_form }
      else
        format.html { render action: 'new' }
        format.json { render json: @teen_re_app_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teen_re_app_forms/1
  # PATCH/PUT /teen_re_app_forms/1.json
  def update
    respond_to do |format|
      if @teen_re_app_form.update(teen_re_app_form_params)
        format.html { redirect_to @teen_re_app_form, notice: 'Teen re app form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @teen_re_app_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teen_re_app_forms/1
  # DELETE /teen_re_app_forms/1.json
  def destroy
    @teen_re_app_form.destroy
    respond_to do |format|
      format.html { redirect_to teen_re_app_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teen_re_app_form
      @teen_re_app_form = TeenReAppForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teen_re_app_form_params
      params[:teen_re_app_form]
    end
end
