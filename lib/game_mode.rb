require './lib/game_messages'
require './lib/game_board'

class GameMode
  include GameMessages

  def greeting
    welcome_message
    player_input  # how do I make the welcome message not print each time
  end

  def player_input
    play_or_quit_options
    user_input = gets.chomp
    check_user_input(user_input)
  end

  def check_user_input(user_input)
    if user_input == "p" || user_input == "play"
      game_mode
    elsif user_input == "i" || user_input == "instructions"
      instructions
      greeting
    elsif user_input == "q" || user_input == "quit"
      exit
    else
      invalid_choice
      greeting
    end
  end


  def game_mode
    GameBoard.new.board
  end

end
