require 'minitest/autorun'
require 'minitest/pride'
require './lib/coordinates'
require './lib/game_board'
require 'pry'

class CoordinatesTest < Minitest::Test

  def test_it_exists
    coordinates = Coordinates.new
    assert_instance_of Coordinates, coordinates
  end

  def test_all_board_coordinates
    coordinates = Coordinates.new
    assert_equal [[".", "1", "2", "3", "4"],
                  ["A", ".", ".", ".", "."],
                  ["B", ".", ".", ".", "."],
                  ["C", ".", ".", ".", "."],
                  ["D", ".", ".", ".", "."]], coordinates.board.boards
  end

  def test_unoccupied_coordinates
    coordinates_1 = Coordinates.new
    user_input = ["A1", "B1"]
    assert coordinates_1.unoccupied_coordinates?(user_input)

    coordinates_2 = Coordinates.new
    user_input_2 = ["A0"]
    refute coordinates_2.unoccupied_coordinates?(user_input_2)
  end

end



  # def test_coordinates_are_horizontal
  #   coordinates = Coordinates.new
  #   user_input = ["A1", "A2"]
  #   assert coordinates.horizontal_coordinates?(user_input)
  # end

  # def test_valid_two_unit_ship_coordinates
  #   coordinates = Coordinates.new
      #user_input = ["A1", "A2"]
  #   assert coordinates.valid_ship_coordinates
  #
  #   coordinates = Coordinates.new
      #user_input = ["B3", "B4"]
  #   assert coordinates.valid_ship_coordinates

  #   coordinates = Coordinates.new
      #user_input = ["B1", "B4"]
  #   refute coordinates.valid_ship_coordinates
  # end
