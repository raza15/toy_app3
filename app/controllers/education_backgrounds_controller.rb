class EducationBackgroundsController < ApplicationController
  before_action :set_education_background, only: [:show, :edit, :update, :destroy]

  # GET /education_backgrounds
  # GET /education_backgrounds.json
  def index
    @education_backgrounds = EducationBackground.all
  end

  # GET /education_backgrounds/1
  # GET /education_backgrounds/1.json
  def show
  end

  # GET /education_backgrounds/new
  def new
    @education_background = EducationBackground.new
  end

  # GET /education_backgrounds/1/edit
  def edit
  end

  # POST /education_backgrounds
  # POST /education_backgrounds.json
  def create
    params[:education_background][:user_id] = current_user.id
    @education_background = EducationBackground.new(education_background_params)

    respond_to do |format|
      if @education_background.save
        format.html { redirect_to @education_background, notice: 'Education background was successfully created.' }
        format.json { render :show, status: :created, location: @education_background }
      else
        format.html { render :new }
        format.json { render json: @education_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_backgrounds/1
  # PATCH/PUT /education_backgrounds/1.json
  def update
    respond_to do |format|
      if @education_background.update(education_background_params)
        format.html { redirect_to @education_background, notice: 'Education background was successfully updated.' }
        format.json { render :show, status: :ok, location: @education_background }
      else
        format.html { render :edit }
        format.json { render json: @education_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_backgrounds/1
  # DELETE /education_backgrounds/1.json
  def destroy
    @education_background.destroy
    respond_to do |format|
      format.html { redirect_to education_backgrounds_url, notice: 'Education background was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_background
      @education_background = EducationBackground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_background_params
      params.require(:education_background).permit(:user_id, :highest_education_level, :university_of_highest_education_level)
    end
end
