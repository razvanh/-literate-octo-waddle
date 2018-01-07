require_relative "./todos"
require_relative "./todo"
require_relative "./command"

todos = Todos.new(Todo)
command_text = gets
Command.new(todos,command_text)
