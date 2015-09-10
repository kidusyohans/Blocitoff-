class ItemsController < ApplicationController
  
  def create
    @item = current_user.items.build(item_params)
    if @item.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user), notice: "Item was added successfully." }
        format.js
      end    
    else 
      flash[:error] = "Error adding item. Please try again."
      redirect_to user_path(current_user)
    end  
  end

  def show
  end

  def update
  end
  
  def destroy
    
     @item = Item.find(params[:id])
     authorize @item

    if @item.destroy
        flash[:notice] = "Item was deleted successfully."
      else
        flash[:error] = "There was an error deleting the item. Please try again."
    end

    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
end
