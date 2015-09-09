class ItemsController < ApplicationController
  
  def create

    @item = Items.new( item_params )
    @item.task = @task
    @new_item = Item.new
    if @item.save
      redirect_to [ @task], notice: "Item saved successfully."
    else
      redirect_to [@task], notice: "Item failed to save."
      render :new
    end
  end

  def show
  end

  def update
  end
  
  def destroy
     @task = Task.find(params[:post_id])
     @item = @task.items.find(params[:id])
     authorize @item

     if @item.destroy
       flash[:notice] = "Item was removed."
       redirect_to [@task.item, @task]
     else
       flash[:error] = "Item couldn't be deleted. Try again."
       redirect_to [@task.item, @task]
     end

     respond_to do |format|
       format.html
       format.js
     end
  end
end
