# encoding: utf-8
require_relative 'post'
require_relative 'link'
require_relative 'memo'
require_relative 'task'

puts "Привет я твой блокнот! Что будешь писать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t #{index}. #{type}"
  end
  choice = STDIN.gets.encode('UTF-8').chomp.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save
puts "Запись сделана!"