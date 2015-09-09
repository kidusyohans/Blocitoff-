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
end
