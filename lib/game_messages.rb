require 'colorize'
require 'pry'

module GameMessages
  extend self

  def welcome_message
    puts "Welcome to BATTLESHIP\n\n"
  end

  def play_or_quit_options
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    puts "-----" * 10
    puts "You are tasked to sink the ships of your opponent\nTo accomplish this mission you should first place your two-unit and three_unit ships in strategic positions.\n\nYour ship placement must comply with the following rules:\n\n1. Ships cannot overlap one another.\n\n2. Ships cannot wrap around the edges of the board.\n\n3. Ships can only be placed horizontally or vertically (I.E. no diagonal placements)\n\n4. Ship placement coordinates must correspond to the existing rows and columns of the board. end\n\n5. Ship coordinates must match the size of the ship.\n\nTo attack your opponent's ship, input the coordinate of where you want to shoot. The program will tell you wheather your shot was a hit or a miss. If you are the first to sink your opponent's ship, you win the game."
    puts "-----" * 10
  end

  def ask_player_for_ship_coordinates
    puts "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first ship should be two units long and the second should be three units long.\nThe grid has A1 at the top left and D4 at the bottom right."
  end

  def two_unit_ship
    puts "Please enter your coordinates for your two-unit ship (IE: A1 A2):"
  end

  def three_unit_ship
    puts "Please enter your coordinates for your three-unit ship (IE: A1 A2 A3):"
  end

  def shoot_again
    puts "This coordinate has already been shot at. Please choose another coordinate to shoot at".red
  end

  def player_misses_shot
    puts "You Missed!"
  end

  def computer_misses_shot
    puts "Computer Misses!".green
  end

  def player_shoots_target
    puts "Your shot was on target.".green
  end

  def computer_shoots_target
    puts "Your ship has been hit!".red
  end

  def player_sinks_ship
    puts "You sunk your opponents 'size of ship' ship!".green
  end

  def invalid_shot
    puts "That's an invalid shot. Please, try again!".red
  end

  def invalid_choice
    puts "That is not a valid choice.".red
  end

  def play_again?
    puts "Would you like to (p)lay again or (q)uit?".cyan
  end

  def player_board
    puts "It's now your turn. This is what your board looks like currently.\nPlease enter a coordinate to shoot at"
  end

  def player_board_after_computer_player
    puts "This is what your board looks like after your opponent's play"
  end

  def winner_statistics
    puts "You have sunk all of your opponent's ships!".green
    puts "Congratulations, you win!\nIt took you 'number of shots' and 'mins' minutes to win."
  end

  def loser_statistics
    puts "Your last ship has sunk :( You lost.".red
    puts "It took your opponent 'game_time' minutes and 'number_of_shots' to sink your ships."
  end

end
