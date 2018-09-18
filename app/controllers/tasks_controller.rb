class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end

  def show
    id = params[:id]
    @task = Task.find_by(id: id)
  end

end
