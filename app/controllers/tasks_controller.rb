TASKS = [
  { one: "Grocery shopping", status: :complete},
  { two: "Take out the trash", status: :inprogress},
  { three: "Eat pizza", status: :incomplete},
  { four: "Do homework" status: :incomplete},
]

class TasksController < ApplicationController
  def index
    @tasks = TASKS
  end
end
