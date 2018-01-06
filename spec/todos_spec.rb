require "Todos"

describe Todos do
  let(:todo_class) { double(:todo_class) }
  describe "::new" do
    subject {Todos.new(todo_class)}

    it "is initialized" do
      expect(subject.todos).to be_empty
    end
  end

  describe "#create" do
    it "stores a new todo" do
      expect(todo_class).to receive(:new).with("get milk")
      todos = Todos.new(todo_class)
      todos.create("get milk")
    end
  end

end