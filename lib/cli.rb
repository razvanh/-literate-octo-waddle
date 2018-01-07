require_relative './todos'
require_relative './todo'
require_relative './command'

instructions = 'Available commands: create, list, complete(index), exit'
puts instructions,""

todos = Todos.new(Todo)

until (command_text = gets.chomp) =~ /(?:ex|qu)it/i
  system "clear"
  puts instructions,""
  Command.new(todos,command_text)
end

