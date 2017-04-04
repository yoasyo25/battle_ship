require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/game_board'
require 'pry'


class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new
    assert_instance_of Player, player
  end

  def test_it_has_access_to_the_board
    player = Player.new
    assert player.player_board.display_board
  end

end
