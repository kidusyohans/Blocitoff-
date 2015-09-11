class ItemsController < ApplicationController
  
  def create
    @item = current_user.items.build(item_params)
    if @item.save
      flash[:notice] = "Item created"   
    else 
      flash[:error] = "Error adding item. Please try again."
    end  
    redirect_to user_path(current_user)
  end

  def show
  end

  def update
  end
  
  def destroy
    
     @item = Item.find(params[:id])
     #authorize @item

    if @item.destroy
        flash[:notice] = "Item was deleted successfully."
      else
        flash[:error] = "There was an error deleting the item. Please try again."
    end

    redirect_to user_path(current_user)
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
