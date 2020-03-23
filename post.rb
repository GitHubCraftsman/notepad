class Post

  def initialize
    @create_at = Time.now
    @text = nil
  end

  def read_from_console

  end

  def to_strings

  end

  def save
    f = File.new(file_path, "w:UTF-8")
    for item in to_strings do
      f.puts(item)
    end
    f.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @create_at.strftime("#{self.class.name} %d-%m-%Y %H:%M:%S.txt")
    return current_path + "/" + file_name
  end
end