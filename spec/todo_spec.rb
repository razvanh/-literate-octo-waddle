require "todo"

describe Todo do
  describe "::new" do
    subject {Todo.new("remember the milk")}

    it "creates a todo" do
      expect(subject).to be_a Todo
    end

    it "creates a new todo with the passed string" do
      expect(subject.text).to eq("remember the milk")
    end

  end
end