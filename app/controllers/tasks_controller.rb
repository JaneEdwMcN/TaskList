require 'date'
class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end

  def show
    id = params[:id]
    @task = Task.find_by(id: id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(name: params[:task][:name], description: params[:task][:description])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    id = params[:id]
    task = Task.find_by(id: id)
    if task.destroy
      redirect_to root_path
    end
  end

  def mark_complete
    id = params[:id]
    @task = Task.find_by(id: id)

    if @task.completion_date == nil
      @task.update(completion_date: Date.today)
    else
      @task.update(completion_date: nil)
    end
    redirect_to root_path
  end

end
