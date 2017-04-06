require 'colorize'
require 'pry'

module GameMessages
  extend self

  def welcome_message
    "Welcome to BATTLESHIP\n\n"
  end

  def play_or_quit_options
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
     "Your mission is to sink the ships of your opponent\nTo accomplish this task you should first place your two-unit and three_unit ships in strategic positions.\n\nYour ship placement must comply with the following rules:\n\n1. Ships cannot overlap one another.\n\n2. Ships cannot wrap around the edges of the board.\n\n3. Ships can only be placed horizontally or vertically (I.E. no diagonal placements)\n\n4. Ship placement coordinates must correspond to the existing rows and columns of the board. end\n\n5. Ship coordinates must match the size of the ship.\n\nTo attack your opponent's ship, input the coordinate of where you want to shoot. The program will tell you wheather your shot was a hit or a miss. If you are the first to sink your opponent's ship, you win the game."
  end

  def ask_player_for_ship_coordinates
   "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first ship should be two units long and the second should be three units long.\nThe grid has A1 at the top left and D4 at the bottom right."
  end

  def two_unit_ship
   "Please enter your coordinates for your two-unit ship (IE: A1 A2):"
  end

  def three_unit_ship
   "Please enter your coordinates for your three-unit ship (IE: A1 A2 A3):"
  end

  def shoot_again
   "This coordinate has already been shot at. Please choose another coordinate to shoot at".red
  end

  def player_misses_shot
   "You Missed!"
  end

  def computer_misses_shot
   "Computer Misses!".green
  end

  def player_shoots_target
   "Your shot was on target.".green
  end

  def computer_shoots_target
   "Your ship has been hit!".red
  end

  def player_sinks_ship
   "You sunk your opponents 'size of ship' ship!".green
  end

  def invalid_shot
   "That's an invalid shot. Please, try again!".red
  end

  def invalid_choice
   "That is not a valid choice.".red
  end

  def winner_statistics
    "You have sunk all of your opponent's ships!".green
    "Congratulations, you win!\nIt took you 'number of shots' and 'mins' minutes to win."
  end

  def losser_statistics
    "Your last ship has sunk :( You lost.\nIt took your opponent 'game_time' minutes and 'number_of_shots' to sink your ships.".red
  end

end
