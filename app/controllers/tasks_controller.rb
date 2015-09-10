class TasksController < ApplicationController
  
  
  
  
  def show
     @task = Task.find(params[:id])
    authorize @task
  
    @items = @task.items 

    @item = Item.new 
    
  end

  def update
  end

  def create
    @task = current_user.tasks.build(task_params)
    
    if @task.save
      redirect_to @task, notice: "Task was saved successfully."
    else
      flash[:error] = "Error creating task. Please try again."
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])

    if @task.destroy
      flash[:notice] = "Task removed."
      
    else
      flash[:error] = "Task could not be deleted. Try again."
      render :show
    
    end
  
  def new
    @task = Task.new    
  end
  
  end
end
