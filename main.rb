require 'colorize'


@player_1 = 3
@player_2 = 3

@current_player = 1

def game_start
  puts "Welcome to the ulitmate math Game."
  puts "Player 1: Please type your name."
  @name_1 = gets.chomp
  puts "Player 2: Please type your name."
  @name_2 = gets.chomp 
  while @player_1 > 0 && @player_2 > 0 
    @num1 = rand(20)
    @num2 = rand(20) 
    player_question
    equation_validator
    player_turn_order
  end
end
 # Works :)

def player_turn_order
  if @current_player == 1
    @current_player = 2
  else
    @current_player = 1
  end
end

def subtract_life
  if @current_player == 1
    @player_1 -= 1
    puts "Wrong, you now have #{@player_1} lives left.".red
  else
    @player_2 -= 1
    puts "Wrong, you now have #{@player_2} lives left.".red
  end
end

def equation_validator
  if @num1 + @num2 == @player_answer
    puts "Correct!".green
  else
    puts "Incorrect!".red
    subtract_life
  end
end # Works :)

def player_question
  if @current_player == 1
    puts "#{@name_1}: What does #{@num1} plus #{@num2} equal?"
    @player_answer = gets.chomp.downcase.to_i
  else
    puts "#{@name_2}: What does #{@num1} plus #{@num2} equal?"
    @player_answer = gets.chomp.downcase.to_i
  end
end

game_start
  # player_question
  # equation_validator
  # player_turn_order


# if equation_validator == true 
#   player_question
#   equation_validator
#   player_turn_order
# else equation_validator == false
#   player_question
#   equation_validator
#   player_turn_order

    
# end



# while equation_validator == true do
#   player_question
#   equation_validator
#   player_turn_order

  
# end


# while $i < $num  do
#    puts("Inside the loop i = #$i" )
#    $i +=1
# end



