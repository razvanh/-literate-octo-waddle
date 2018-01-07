require "todos"
require "todo"
require "command"

describe "features" do

  it "creates a todo from a text command" do
    todos = Todos.new(Todo)
    command_text = "create remember the milk"
    Command.new(todos,command_text)
    expect(todos.todos[0].text).to eq("remember the milk")
  end

  it "list all the todos" do
    todos = Todos.new(Todo)
    command_text = "create remember the milk"
    Command.new(todos,command_text)
    command_text = "list"
    expect {Command.new(todos,command_text)}.to output("1. remember the milk\n").to_stdout
  end
end