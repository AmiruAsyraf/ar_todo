require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

ARGV

command =ARGV.shift
todo = ARGV

case command
when 'add'
  # TaskController.add(todo)
when 'list'
when 'delete'
when 'complete'
end