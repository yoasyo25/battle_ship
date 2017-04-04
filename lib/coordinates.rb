require_relative 'game_board'
require 'pry-state'

class Coordinates
  attr_reader :board, :user_input

  def initialize
    @board = GameBoard.new.board
  end

 def unoccupied_coordinates?(user_input)
   board[user_input[0]] == '.' && board[user_input[1]] == '.'
 end

 def horizontal_coordinates?(user_input)
   user_input[0][0] == user_input[1][0]
 end

 def adjacent_horizontal_coordinates?(user_input)
   return true if user_input[0][1].to_i - user_input[1][1].to_i == -1 && horizontal_coordinates?(user_input)
   return true if user_input[1][1].to_i - user_input[0][1].to_i == 1 && horizontal_coordinates?(user_input)
 end

 def vertical_coordinates?(user_input)
   user_input[0][1] == user_input[1][1]
 end

 def adjacent_vertical_coordinates?(user_input)
   if board.has_key?(user_input[0]) && board.has_key?(user_input[1])
     return true if user_input[0][0].ord - user_input[1][0].ord == -1 && vertical_coordinates?(user_input)
     return true if user_input[1][0].ord - user_input[0][0].ord == 1 && vertical_coordinates?(user_input)
   else
     return false
  end
 end

 def ship_on_coordinate
    if unoccupied_coordinates?(user_input)
      board[user_input[0]] = 'S'
      board[user_input[1]] = 'S'
    end
  end

end

# coordinate = Coordinates.new
# puts coordinate.board
# binding.pry
# "---------------"
