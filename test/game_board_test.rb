require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board'
require './lib/coordinates'
require 'pry'

class GameBoard < Minitest::Test

  def test_it_exists
    game_board = GameBoard.new
    assert_instance_of Gameboard, game_board
  end


end
