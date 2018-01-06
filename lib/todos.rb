require 'todo'

class Todos
  attr_reader :todos

  def initialize
    @todos = []
  end

  def create(text)
    @todos << Todo.new(text)
  end

end