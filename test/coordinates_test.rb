require 'minitest/autorun'
require 'minitest/pride'
require './lib/coordinates'
require './lib/game_board'
require './lib/ship'
require 'pry'

class CoordinatesTest < Minitest::Test

  def test_it_exists
    coordinates = Coordinates.new
    assert_instance_of Coordinates, coordinates
  end

  def test_all_board_coordinates
    coordinates = Coordinates.new
    assert_equal ({"A0"=>"  A  ", "A1"=>"  .  ", "A2"=>"  .  ",
                  "A3"=>"  .  ", "A4"=>"  .  ", "B0"=>"  B  ",
                  "B1"=>"  .  ", "B2"=>"  .  ", "B3"=>"  .  ",
                  "B4"=>"  .  ", "C0"=>"  C  ", "C1"=>"  .  ",
                  "C2"=>"  .  ", "C3"=>"  .  ", "C4"=>"  .  ",
                  "D0"=>"  D  ", "D1"=>"  .  ", "D2"=>"  .  ",
                  "D3"=>"  .  ", "D4"=>"  .  "}),
                  coordinates.board
  end

  def test_unoccupied_coordinates
    coordinates_1 = Coordinates.new
    user_input = ["A1", "B1"]
    assert coordinates_1.unoccupied_coordinates?(user_input)

    coordinates_2 = Coordinates.new
    user_input_2 = ["A0", "D5"]
    refute coordinates_2.unoccupied_coordinates?(user_input_2)
  end

  def test_coordinates_are_horizontal
    coordinates = Coordinates.new
    user_input = ["A1", "A2"]
    assert coordinates.horizontal_coordinates?(user_input)

    user_input_2 = ["A1", "B1"]
    refute coordinates.horizontal_coordinates?(user_input_2)
  end

  def test_horizontal_coordinates_are_adjacent_and_on_the_board
    coordinates = Coordinates.new
    user_input = ["A1", "A2"]
    assert coordinates.adjacent_horizontal_coordinates?(user_input)

    user_input_2 = ["A1", "A3"]
    refute coordinates.adjacent_horizontal_coordinates?(user_input_2)

    user_input_3 = ["G1", "G2"]
    refute coordinates.adjacent_vertical_coordinates?(user_input_3)

    user_input_4 = ["D1", "E1"]
    refute coordinates.adjacent_vertical_coordinates?(user_input_4)
  end

  def test_coordinates_are_vertical
    coordinates = Coordinates.new
    user_input = ["A3", "B3"]
    assert coordinates.vertical_coordinates?(user_input)

    user_input_2 = ["D1", "D2"]
    refute coordinates.vertical_coordinates?(user_input_2)
  end

  def test_vertical_coordinates_are_adjacent_and_on_the_board
    coordinates = Coordinates.new
    user_input = ["A3", "B3"]
    assert coordinates.adjacent_vertical_coordinates?(user_input)

    user_input_2 = ["D1", "D2"]
    refute coordinates.adjacent_vertical_coordinates?(user_input_2)

    user_input_3 = ["G1", "F1"]
    refute coordinates.adjacent_vertical_coordinates?(user_input_3)

    user_input_4 = ["D1", "E1"]
    refute coordinates.adjacent_vertical_coordinates?(user_input_4)
  end

  def test_coordinate_display_changes_when_ship_is_placed
    coordinates = Coordinates.new
    user_input = ["A3", "B3"]

    assert_equal ({"A0"=>"  A  ", "A1"=>"  .  ", "A2"=>"  .  ",
                  "A3"=>"  S  ", "A4"=>"  .  ", "B0"=>"  B  ",
                  "B1"=>"  .  ", "B2"=>"  .  ", "B3"=>"  S  ",
                  "B4"=>"  .  ", "C0"=>"  C  ", "C1"=>"  .  ",
                  "C2"=>"  .  ", "C3"=>"  .  ", "C4"=>"  .  ",
                  "D0"=>"  D  ", "D1"=>"  .  ", "D2"=>"  .  ",
                  "D3"=>"  .  ", "D4"=>"  .  "}),
                  coordinates.display_hit_on_board(user_input)
  end

end

#test for coordinate being occupied
