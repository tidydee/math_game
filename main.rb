require 'colorize'


@player1_lives = 3
@player2_lives = 3

@player1_score = 0
@player2_score = 0

@current_player = 1

def game_start
  puts "WELCOME TO THE ULTIMATE MATH GAME!"
  puts "Player 1: Please type your name."
  @name_1 = gets.chomp
  puts "Player 2: Please type your name."
  @name_2 = gets.chomp 
  while @player1_lives > 0 && @player2_lives > 0 
    @num1 = rand(20)
    @num2 = rand(20) 
    math_operator_generator
    player_question
    equation_validator
    player_turn_order     
  end
game_over
end
 

def player_turn_order
  if @current_player == 1
    @current_player = 2
  else
    @current_player = 1
  end
end

def subtract_life
  if @current_player == 1
    @player1_lives -= 1
    puts "Incorrect answer #{@name_1}, you now have #{@player1_lives} lives left.".red
  else
    @player2_lives -= 1
    puts "Incorrect answer #{@name_2}, you now have #{@player2_lives} lives left.".red
  end
end

def game_over
  if @player1_lives == 0
    puts "GAME OVER! #{@name_1} loses!"
    puts "Do you want to play again? Y/N?"
    play_again = gets.chomp.downcase
      if play_again == "y"
        game_start
      else
        puts "Thank you for playing!"    
      end
  else
    @player2_lives == 0
    puts "GAME OVER! #{@name_2} loses!"
    puts "Do you want to play again? Y/N?"
    play_again = gets.chomp.downcase
      if play_again == "y"
        game_start
      else
        puts "Thank you for playing!"    
      end
  end
end


def math_operator_generator
  operator = ['+','-','*','/']
  @random_operator = operator[rand(0..3)]
end

def equation_validator
  if eval("#{@num1} #{@random_operator} #{@num2}") == @player_answer
   puts "Correct!".green
  # if @num1 + @num2 == @player_answer
  #   puts "Correct!".green
  # elsif @num1 - @num2 == @player_answer
  #   puts "Correct!".green
  # elsif @num1 * @num2 == @player_answer
  #   puts "Correct!".green
  # elsif @num1 / @num2 == @player_answer
  #   puts "Correct!".green    
  else
    subtract_life
  end
end 



def player_question
  if @current_player == 1
    puts "#{@name_1}: What does #{@num1} #{@random_operator} #{@num2} equal?"
    #@validated_equation = eval("#{@num1} #{@random_operator} #{@num2}")
    @player_answer = gets.chomp.to_i
  else
    puts "#{@name_2}: What does #{@num1} #{@random_operator} #{@num2} equal?"
    @player_answer = gets.chomp.to_i
  end
end

game_start




