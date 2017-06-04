class FamilyBackgroundsController < ApplicationController
  before_action :set_family_background, only: [:show, :edit, :update, :destroy]

  # GET /family_backgrounds
  # GET /family_backgrounds.json
  def index
    @family_backgrounds = FamilyBackground.all
  end

  # GET /family_backgrounds/1
  # GET /family_backgrounds/1.json
  def show
  end

  # GET /family_backgrounds/new
  def new
    @family_background = FamilyBackground.new
  end

  # GET /family_backgrounds/1/edit
  def edit
  end

  # POST /family_backgrounds
  # POST /family_backgrounds.json
  def create
    params[:family_background][:user_id] = current_user.id
    @family_background = FamilyBackground.new(family_background_params)

    respond_to do |format|
      if @family_background.save
        format.html { redirect_to @family_background, notice: 'Family background was successfully created.' }
        format.json { render :show, status: :created, location: @family_background }
      else
        format.html { render :new }
        format.json { render json: @family_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_backgrounds/1
  # PATCH/PUT /family_backgrounds/1.json
  def update
    respond_to do |format|
      if @family_background.update(family_background_params)
        format.html { redirect_to @family_background, notice: 'Family background was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_background }
      else
        format.html { render :edit }
        format.json { render json: @family_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_backgrounds/1
  # DELETE /family_backgrounds/1.json
  def destroy
    @family_background.destroy
    respond_to do |format|
      format.html { redirect_to family_backgrounds_url, notice: 'Family background was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_background
      @family_background = FamilyBackground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_background_params
      params.require(:family_background).permit(:user_id, :my_current_occupaion, :father_current_occupation, :mother_current_occupation, :number_of_siblings)
    end
end
