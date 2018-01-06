
class Todos
  attr_reader :todos

  def initialize(todo_class)
    @Todo = todo_class
    @todos = []
  end

  def create(text)
    @todos << @Todo.new(text)
  end

end