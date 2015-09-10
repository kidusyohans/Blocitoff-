class UsersController < ApplicationController
  
  
  
  def show
     @items= current_user.items
  end

  def update
  end
end
