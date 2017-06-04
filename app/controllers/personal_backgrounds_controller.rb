class PersonalBackgroundsController < ApplicationController
  before_action :set_personal_background, only: [:show, :edit, :update, :destroy]

  # GET /personal_backgrounds
  # GET /personal_backgrounds.json
  def index
    @personal_backgrounds = PersonalBackground.all
  end

  # GET /personal_backgrounds/1
  # GET /personal_backgrounds/1.json
  def show
  end

  # GET /personal_backgrounds/new
  def new
    @personal_background = PersonalBackground.new
  end

  # GET /personal_backgrounds/1/edit
  def edit
  end

  # POST /personal_backgrounds
  # POST /personal_backgrounds.json
  def create
    params[:personal_background][:user_id] = current_user.id
    @personal_background = PersonalBackground.new(personal_background_params)

    respond_to do |format|
      if @personal_background.save
        format.html { redirect_to @personal_background, notice: 'Personal background was successfully created.' }
        format.json { render :show, status: :created, location: @personal_background }
      else
        format.html { render :new }
        format.json { render json: @personal_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_backgrounds/1
  # PATCH/PUT /personal_backgrounds/1.json
  def update
    respond_to do |format|
      if @personal_background.update(personal_background_params)
        format.html { redirect_to @personal_background, notice: 'Personal background was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_background }
      else
        format.html { render :edit }
        format.json { render json: @personal_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_backgrounds/1
  # DELETE /personal_backgrounds/1.json
  def destroy
    @personal_background.destroy
    respond_to do |format|
      format.html { redirect_to personal_backgrounds_url, notice: 'Personal background was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_background
      @personal_background = PersonalBackground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_background_params
      params.require(:personal_background).permit(:user_id, :date_of_birth, :age, :gender, :email, :phone, :home_addess, :current_employer, :current_job_title)
    end
end
