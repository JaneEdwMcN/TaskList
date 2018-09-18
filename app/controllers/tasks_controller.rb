TASKS = [
  { name: "one", description: "Grocery shopping", completion_date: "2018-01-01"},
  { name: "two", description: "Take out the trash", completion_date: "2018-01-01"},
  { name: "three", description: "Eat pizza", completion_date: "2018-01-01"},
  { name: "four", description: "Do homework", completion_date: "2018-01-01"}
]

class TasksController < ApplicationController
  def index
    @tasks = TASKS
  end

  def show
    id = params[:id]
    @task = TASKS.find do |task|
      task[:name] == id
    end
  end

end
