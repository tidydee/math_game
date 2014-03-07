require 'colorize'


# def game_start
#   puts "Welcome to the ulitmate math Game."
#   puts "Player 1: Please type your name."
#   p1 = gets.chomp.downcase
#   puts "Player 2: Please type your name."
#   p2 = gets.chomp.downcase  
# end
# game_start # Works :)

def equation_generator
  @num1 = rand(20)
  @num2 = rand(20) 
end
equation_generator # Works :)

def equation_validator
  if @num1 + @num2 == @player_answer
    puts "Correct!".green
    true
  else
    puts "Incorrect!".red
    false
  end
end

def player_question
  puts "Player[?]: What does #{@num1} plus #{@num2} equal?"
  @player_answer = gets.chomp.downcase

  # Need to assign a variable to Player[?]
end

player_question
equation_validator



