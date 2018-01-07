
class Todos
  attr_reader :todos

  def initialize(todo_class)
    @Todo = todo_class
    @todos = []
  end

  def create(text)
    @todos << @Todo.new(text)
  end

  def list
    @todos.each_with_index {|todo,i| puts"#{i+1}. #{todo.text}"}
  end

end