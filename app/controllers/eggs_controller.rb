class EggsController < ApplicationController
skip_before_action :verify_authenticity_token
  before_action :set_egg, only: [:show, :edit, :update, :destroy]


  # GET /eggs
  def index
    @egg = Egg.all
  end

  # GET /eggs
  def stock
    @egg = Egg.all
  end


  # POST /eggs
  def create
    @egg = Egg.new(egg_params)
    @egg.save
    flash[:notice] = "Egg count recorded!"
    redirect_to :back
  end


  # PATCH  /eggs/:id(.:format)  eggs#update
  def edit
    @egg = Egg.find(@egg.id).increment!(:quantity)
    update_attributes(:quantity => quantity + 1)
    flash[:notice] = "One added to egg count"
    redirect_to :back
  end


  # DELETE /eggs/1
  def destroy
    @egg.destroy
    flash[:notice] = "Egg count was successfully destroyed."
    redirect_to :back
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
