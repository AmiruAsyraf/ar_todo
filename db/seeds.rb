require 'faker'


for x in 0..3
  todo = Faker::Lorem.sentence
  description = "false"

  Task.create(todo: todo, description: description)
end

