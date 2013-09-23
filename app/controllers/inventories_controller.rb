class InventoriesController < ApplicationController
  helper_method :inventories

  def new 
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventories_params)
    if @inventory.save
      redirect_to new_inventory_path
      flash[:notice] = "Inventory created successfully. YUM!"
    else
      render :new
      flash[:notice] = "Inventory not created."
    end
  end


  private
  def inventories
    @inventories ||= Inventory.all
  end

  def inventories_params
    params.require(:inventory).permit(:title, :description, :quantity)
  end
end