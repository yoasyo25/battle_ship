require 'minitest/autorun'
require 'minitest/pride'
require './lib/opponent'
require './lib/ship'
require './lib/game_board'
require 'pry'


class OpponentTest < Minitest::Test

  def test_it_exists
    opponent = Opponent.new
    assert_instance_of Opponent, opponent
  end



end
