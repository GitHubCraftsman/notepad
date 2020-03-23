class Memo < Post

  def read_from_console

    puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."
    @text = []
    line = nil

    while line != 'end'
      # Читаем очередную строку от пользователя
      line = STDIN.gets.encode('UTF-8').chomp

      # И записываем её в массив
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@create_at.strftime("%d-%m-%Y  %H:%M:%S")} \n\r \n\r"
     @text.unshift(time_string)
  end

end