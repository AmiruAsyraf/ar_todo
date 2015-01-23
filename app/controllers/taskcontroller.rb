require_relative '../models/task'
require_relative '../views/taskview'

class TaskController < ActiveRecord::Base


  def self.add(todo,status)

    Task.create(todo: todo, status: status)
    result = "#{todo}"
    TaskView.display_add(result)

  end


  def self.delete(id)
    # get id to delete. and get its todo item to show in view as message
     data =  Task.find_by(id: id.to_i)
     str = data.todo
     data.destroy
     TaskView.display_delete(str)

  end

  def self.complete(id)
     todo =  Task.find_by(id: id.to_i)
     todo.status = 'true'
     todo.save
  end

end
