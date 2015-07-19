class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]


  # GET /animals
  def index
    @animal = Animal.all
    @animalinventory = Inventory.all
    @animaltime = Inventory.all
    @inventory = Inventory.new
  end


  # GET /animals/1
  # GET /animals/1.json
  def show
  end


  # GET /animals/new
  def new
    @animal = Animal.new
  end


 # POST /animals
  def create
    @animal = Animal.new(egg_params)
    @animal.save
    flash[:notice] = "Flock category created!"
    redirect_to :back
  end


 # PATCH  /animals/:id(.:format)  animals#update
  def edit
    @animal = Animal.find(@animal.id).increment!(:quantity)
    update_attributes(:quantity => quantity + 1)
    flash[:notice] = "One bird added to this flock"
    redirect_to :back
  end


  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)
    flash[:notice] = "New animal created"
    redirect_to :back
  end


  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    @animal.update(animal_params)
    flash[:notice] = "One animal added"
    redirect_to :back
  end


  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal.destroy
    flash[:notice] = "Animal type removed."
    redirect_to :back
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:id, :name, :breed_id, :egg_id)
    end
end
