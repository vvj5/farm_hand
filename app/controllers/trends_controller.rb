class TrendsController < ApplicationController
  def index
    @eggs = Inventory.all
  end
end
