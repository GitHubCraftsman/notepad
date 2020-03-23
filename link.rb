class Link < Post

  def initialize
    super
    @url = ''
  end

  def read_to_console
    puts "Укажите адресс ссылки: "
    @url = STDIN.gets.encode('UTF-8').chomp
    puts "Опишите ссылку: "
    @text = STDIN.gets.encode('UTF-8').chomp
  end

  def to_strings
    time_string = "Создано: #{@create_at.strftime("%d-%m-%Y  %H:%M:%S")} \n\r \n\r"

    return [@url, @text,time_string]
  end
end