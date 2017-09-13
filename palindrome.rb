continue = true
require 'palindrome'
require 'colorize'

def game
  puts "welcome to palindrome".colorize(:green)
  puts "Test out words or phrases to see if they are palindromes"
  input = gets.chomp
    if
      input.palindrome? == true
      puts "#{input} = #{input.reverse}"
      puts "success!".colorize(:yellow)
      else
        input.palindrome? == false
        puts "oh sorry try again!".colorize(:red)
    end
end


  while continue
    game
    puts "Press 1 to continue and 2 to quit".colorize(:blue)
    input = gets.chomp
    case input
    when '1'
      continue = true
    when '2'
      continue = false
    end
  end
continue
