class CreateTasks < ActiveRecord::Migration

 def change
  create_table tasks: do |t|
    t.string :todo
    t.string :status

    t.timestamps null false
 end

end