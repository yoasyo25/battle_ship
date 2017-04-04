require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board'
require './lib/coordinates'
require './lib/computer_player'
require './lib/ship'
require 'pry'


class ComputerPlayerTest < Minitest::Test

  def test_it_exists
    cpu_player = ComputerPlayer.new
    assert_instance_of ComputerPlayer, cpu_player
  end

  def test_it_can_randomly_choose_ship_positions
    cpu_player = ComputerPlayer.new

  end

end
