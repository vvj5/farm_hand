class EggsController < ApplicationController
skip_before_action :verify_authenticity_token
  before_action :set_egg, only: [:show, :edit, :update, :destroy]

  # GET /eggs
  # GET /eggs.json
  def index
    @eggs = Egg.all
  end

  # GET /eggs/1
  # GET /eggs/1.json
  def show
  end

  # GET /eggs/new
  def new
    @egg = Egg.new
  end

  # POST /eggs
  # POST /eggs.json
  def create
    @egg = Egg.new(egg_params)

    respond_to do |format|
      if @egg.save
        format.html { redirect_to @egg, notice: 'Egg was successfully created.' }
        format.json { render :show, status: :created, location: @egg }
      else
        format.html { render :new }
        format.json { render json: @egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eggs/1
  # DELETE /eggs/1.json
  def destroy
    @egg.destroy
    respond_to do |format|
      format.html { redirect_to eggs_url, notice: 'Egg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg
      @egg = Egg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egg_params
      params.require(:egg).permit(:color, :quantity, :animal_id)
    end
end
