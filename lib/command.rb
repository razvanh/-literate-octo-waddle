class Command

  def initialize(todos,command_text)
    @todos = todos
    dispatch(command_text)
  end

  private

  def command_name(command_text)
    command_text.partition(" ")[0]
  end

  def rest_of_command(command_text)
    command_text.partition(" ")[2]
  end

  def dispatch(command_text)
    if command_name(command_text) == "create"
      @todos.create(rest_of_command(command_text))
    end

    if command_name(command_text) == "list"
      @todos.list
    end
  end

end