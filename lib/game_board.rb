require 'pry-state'

class GameBoard

  attr_reader :board


  def initialize
    @board = create_board
  end

  def create_board
    hash = Hash.new(0)
    hash['A1'] = '.'
    hash['A2'] = '.'
    hash['A3'] = '.'
    hash['A4'] = '.'
    hash['B1'] = '.'
    hash['B2'] = '.'
    hash['B3'] = '.'
    hash['B4'] = '.'
    hash['C1'] = '.'
    hash['C2'] = '.'
    hash['C3'] = '.'
    hash['C4'] = '.'
    hash['D1'] = '.'
    hash['D2'] = '.'
    hash['D3'] = '.'
    hash['D4'] = '.'
    hash
  end

  def battleship_board
    puts "======================="
    puts "   * 1   2   3   4"
    puts "  A  #{board['A1']}   #{board['A2']}   #{board['A3']}   #{board['A4']}"
    puts "  B  #{board['B1']}   #{board['B2']}   #{board['B3']}   #{board['B4']}"
    puts "  C  #{board['C1']}   #{board['C2']}   #{board['C3']}   #{board['C4']}"
    puts "  D  #{board['D1']}   #{board['D2']}   #{board['D3']}   #{board['D4']}"
    puts "======================="
  end

end

  # @target = { 'A1': @board_1[1] }
game = GameBoard.new.battleship_board
  #.matrix ??? check out the method
  #.combine ???
  #possible ship coordinates on the board

  #2-unit        3-unit horizontal      #2-unit        3-unit vertical

  #-1 subtraction                        0 subtraction

  # "A1 A2"      A1 && A2 && A3         A1 && B1        A1 && B1 && C1


  # A2 && A3     A2 && A3 && A4         B1 && C1        B1 && C1 && D1
  # A3 && A4                            C1 && D1

  # B1 && B2     B1 && B2 && B3         A2 && B2        A2 && B2 && C2
  # A2 && A3     B2 && B3 && B4         B2 && C2        B2 && C2 && D2
  # A3 && A4                            C2 && D2

  # C1 && C2     C1 && C2 && C3         A3 && B3        A3 && B3 && C3
  # A2 && A3     C2 && C3 && C4         B3 && C3        B3 && C3 && D3
  # C3 && C4                            C3 && D3

  # D1 && D2     D1 && D2 && D3         A4 && B4         A4 && B4 && C4
  # A2 && A3     D2 && D3 && D4         B4 && C4         B4 && C4 && D4
  # D3 && D4                            C4 && D4


# input = gets.chomp.downcase.split
# #can initialize two players
# #@players = [cpu, human]
#
# def first_player
#   @players.first
# end
#
# def second_player
#   @players.last
# end
#
# def end_turn
#   @players = @players.rotate
# end
#
#
# #array of target positions
# #computer randomly selects two target positions that are next to each other
# #figure out how to select two sequencial positions
# #reassign the space for the selected positions in the background
# #store the selected positions
# #check where the positions are and out put hit or miss based on stored ship positions and coordinates chosen
#
# #=> have to update the board every time after a play.
#     # we need to call board after player chooses a coordinate that meets
#     #the specifications. The new board needs to have hits and misses in it.
#
#
# #=> figure out what winning and losing means.
#
# #=> we have to figure out how to constrain movements that are not compliant
#
#
# def winner
#
# end
#
#
# def play
#   #collection of methods that make the game run
# end
#
# def play_game
#   #*** can we count the number of moves in one game and set the play for that
#   #many times using .times?
#
#   # -- cpu_move
#   # break if winner?(cpu) || winner?(player) || game_tied?
#   # ---player_move
#   # break if winner?(cpu) || winner?(player) || game_tied?
#   #----draw_board
# end
#
# def print_results
#   # if game_tied?
#   #   puts draw_message
#   # elsif winner? cpu_move
#   #   puts "you lost"
#   # elsif winner? player
#   #   puts "you won after ... shots in ... time"
#   #draw board
# end
#
# def player_move
#   # display message
#   # move = gets.chomp.downcase
#   # if check_input move == true
#   #   update board
#   # else puts message about why not correct move and to reenter
#   #   draw_board
#   #   player_move
#   # end
#
# end
#
#
# def check_input move
#   # move.between?(....) && @board[move minus -1 since index starts from 0] == "."
#   # this is where we need to set the parameters of the player move
# end
#
# def cpu_move
#   # random move of the computer
#   # but in a way that does not violate the rules
#   # update_board
# end
