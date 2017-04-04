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
  #
  # def test_board_display_changes_whe_ship_is_hit
  #   game_board = GameBoard.new
  #   assert_equal 'H', game_board.display_hit_on_board
  # end



end
