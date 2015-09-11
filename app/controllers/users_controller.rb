class UsersController < ApplicationController
  
  
  
  def show
    @user = current_user
     @items= current_user.items
  end

  def update
  end
end
