require 'pry-state'
class Coordinates
  attr_reader :board, :user_input

  def initialize
    # @user_input = gets.chomp.split
    @board = GameBoard.new.board
  end

 def unoccupied_coordinates?(user_input)
   #break up user input into each element
   #find that location in the array
   #find index and see if it is empty
   if board[user_input[0]] == '.' && board[user_input[1]] == '.'
     board[user_input[0]] = 'S'
     board[user_input[1]] = 'S'
   end


   end


 end




end
