class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  # GET /inventories
  # GET /inventories.json
  def index
    @inventories = Inventory.all
    @expense = Expense.all
    @income = Income.all
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def incrementegg
    @column = params[:eggtype]
    @row = Inventory.find(params[:id])
    @currentcount = @row[@column] + 1
    @row[@column] = @currentcount
    @row.save
    # notice[:flash] "one egg added"
    redirect_to :back
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def decrementegg
    @column = params[:eggtype]
    @row = Inventory.find(params[:id])
    @currentcount = @row[@column] - 1
    @row[@column] = @currentcount
    @row.save
    # notice[:flash] "one egg added"
    redirect_to :back
  end

  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end


   # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def incrementanimal
    @column = params[:animaltype]
    @row = Inventory.find(params[:id])
    @currentcount = @row[@column] + 1
    @row[@column] = @currentcount
    @row.save
    # notice[:flash] "one animal added"
    redirect_to :back
  end


  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def decrementanimal
    @column = params[:animaltype]
    @row = Inventory.find(params[:id])
    @currentcount = @row[@column] - 1
    @row[@column] = @currentcount
    @row.save
    # notice[:flash] "one animal added"
    redirect_to :back
  end


  # GET /inventories/new
  def new
    @inventory = Inventory.new
  end

  # GET /inventories/1/edit
  def edit
  end

  # POST /inventories
  # POST /inventories.json
  def create
    @inventory = Inventory.new(inventory_params)
    @inventory.save
    flash[:notice] = "Added!"
    redirect_to :back
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    respond_to do |format|
      if @inventory.update(inventory_params)
        format.html { redirect_to @inventory, notice: 'Inventory was successfully updated.' }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.json
  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
     def inventory_params
      params.require(:inventory).permit(:chickenltbrownlayer, :chickendrkbrnlayer, :chickenwhitelayer, :chickenblugrnlayer, :chickenbantamlayer, :duck, :goose, :turkey, :guinea, :quail, :chickenltbrownegg, :chickendrkbrnegg, :chickenwhiteegg, :chickenblugrnegg, :chickenbantamegg, :duckegg, :gooseegg, :turkeyegg, :guineaegg, :quailegg)
    end
end
