require "Todos"

describe Todos do

  describe "::new" do
    subject {Todos.new}

    it "is initialized" do
      expect(subject.todos).to be_empty
    end
  end

  describe "#create" do
    it "stores a new todo" do
      todos = Todos.new
      todos.create("get milk")
      expect(todos.todos[0].text).to eq("get milk")
    end
  end

end