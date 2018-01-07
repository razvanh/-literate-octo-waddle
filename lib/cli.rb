require_relative './todos'
require_relative './todo'
require_relative './command'

puts 'Available commands: create, list, complete(index), exit'

todos = Todos.new(Todo)

until (command_text = gets.chomp) =~ /(?:ex|qu)it/i
  Command.new(todos,command_text)
end

