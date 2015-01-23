require_relative '../controllers/taskcontroller'
require_relative '../models/task'

class TaskView < ActiveRecord::Base


def self.display_add(result)
puts "Appended #{result} to your TODO list..."
end


def self.display_delete(result)
  puts "Deleted #{result} from your TODO list..."
end


def self.display_list
  # list all todo list from Task
  Task.all.each do |x|
    if x.status =='true'
    puts  "#{x.id}. #{x.todo} [x]"
    else
    puts  "#{x.id}. #{x.todo} [ ]"
    end
  end

end
end