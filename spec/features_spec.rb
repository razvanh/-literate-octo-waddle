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
end