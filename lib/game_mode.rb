require './lib/game_messages'
require './lib/game_board'

class GameMode
  include GameMessages

  def welcome
    puts welcome_message
  end

  def greeting
    puts play_or_quit_options
    user_input = gets.chomp 
    check_user_input(user_input)
  end

  def check_user_input(user_input)
    if user_input == "p" || user_input == "play"
      start_game
    elsif user_input == "i" || user_input == "instructions"
      puts instructions
      greeting
    elsif user_input == "q" || user_input == "quit"
      exit
    else
      puts invalid_choice
      greeting
    end
  end


  def start_game
    puts ask_player_for_ship_coordinates
    GameBoard.new.display_board
  end

end
