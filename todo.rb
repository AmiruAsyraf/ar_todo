require_relative 'config/application'
require_relative 'app/controllers/taskcontroller'
require_relative 'app/views/taskview'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

ARGV
command =ARGV.shift
todo = ARGV.join(" ")
status = "false"

case command
when 'add'
  TaskController.add(todo,status)
when 'list'
  TaskView.display_list
when 'delete'
  TaskController.delete(todo)
when 'complete'
  TaskController.complete(todo)
end