require './lib/game_board'
require './lib/ship'
require './lib/coordinates'
require './lib/game_board'
require 'pry'

class Opponent
  attr_accessor :opponent_board, :two_unit_ship, :three_unit_ship,
                :two_unit_ship_coords, :three_unit_ship_coords

  def initialize
    @opponent_board = GameBoard.new.board
    @opponent_placements = GameBoard.new.placement_coordinates
    @opponent_ship = opponent_ship
    @two_unit_ship = two_unit_ship
    @three_unit_ship = three_unit_ship
    @two_unit_ship_coords = Array.new
    @three_unit_ship_coords = Array.new
  end


end
