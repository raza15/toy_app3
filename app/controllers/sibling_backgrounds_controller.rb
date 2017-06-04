class SiblingBackgroundsController < ApplicationController
  before_action :set_sibling_background, only: [:show, :edit, :update, :destroy]

  # GET /sibling_backgrounds
  # GET /sibling_backgrounds.json
  def index
    @sibling_backgrounds = SiblingBackground.all
  end

  # GET /sibling_backgrounds/1
  # GET /sibling_backgrounds/1.json
  def show
  end

  # GET /sibling_backgrounds/new
  def new
    @sibling_background = SiblingBackground.new
  end

  # GET /sibling_backgrounds/1/edit
  def edit
  end

  # POST /sibling_backgrounds
  # POST /sibling_backgrounds.json
  def create
    params[:sibling_background][:user_id] = current_user.id

    @sibling_background = SiblingBackground.new(sibling_background_params)

    respond_to do |format|
      if @sibling_background.save
        format.html { redirect_to @sibling_background, notice: 'Sibling background was successfully created.' }
        format.json { render :show, status: :created, location: @sibling_background }
      else
        format.html { render :new }
        format.json { render json: @sibling_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sibling_backgrounds/1
  # PATCH/PUT /sibling_backgrounds/1.json
  def update
    respond_to do |format|
      if @sibling_background.update(sibling_background_params)
        format.html { redirect_to @sibling_background, notice: 'Sibling background was successfully updated.' }
        format.json { render :show, status: :ok, location: @sibling_background }
      else
        format.html { render :edit }
        format.json { render json: @sibling_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sibling_backgrounds/1
  # DELETE /sibling_backgrounds/1.json
  def destroy
    @sibling_background.destroy
    respond_to do |format|
      format.html { redirect_to sibling_backgrounds_url, notice: 'Sibling background was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sibling_background
      @sibling_background = SiblingBackground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sibling_background_params
      params.require(:sibling_background).permit(:user_id, :sibling_name, :sibling_age, :sibling_marital_status, :sibling_residence)
    end
end
