require "./lib/game_board"

class Player
  attr_accessor :player_board

  def initialize
    @player_board = GameBoard.new
  end

  def user_input
    gets.chomp.split
  end

end
