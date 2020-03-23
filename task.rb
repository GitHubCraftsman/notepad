require 'date'

class Task < Post

  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.encode('UTF-8').chomp
    puts "К какому числу? Укажите дату в формате день-месяць-год"
    input = STDIN.gets.encode('UTF-8').chomp
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@create_at.strftime("%d-%m-%Y  %H:%M:%S")} \n\r \n\r"
    deadline = "Крайний срок: #{@due_date}"
    return [deadline, @text,time_string]
  end
end