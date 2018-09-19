class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end

  def show
    id = params[:id]
    @task = Task.find_by(id: id)
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
