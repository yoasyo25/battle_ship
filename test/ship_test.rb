require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require 'pry'

class ShipTest < Minitest::Test

  def test_it_exists
    two_unit_ship = Ship.new(2)
    assert_instance_of Ship, two_unit_ship
  end

  def test_it_knows_ship_length
    two_unit_ship = Ship.new(2)
    assert_equal 2, two_unit_ship.ship_length

    three_unit_ship = Ship.new(3)
    assert_equal 3, three_unit_ship.ship_length
  end

  def test_ship_can_be_hit
    two_unit_ship = Ship.new(2)
    assert_equal 1, two_unit_ship.hit

    three_unit_ship = Ship.new(3)
    assert_equal 1, three_unit_ship.hit
  end

  def test_ships_health_declines_when_hit
    two_unit_ship = Ship.new(2)
    two_unit_ship.hit
    assert_equal 1, two_unit_ship.health

    three_unit_ship = Ship.new(3)
    three_unit_ship.hit
    assert_equal 2, three_unit_ship.health
    three_unit_ship.hit
    assert_equal 1, three_unit_ship.health
  end

  def test_ship_sinks_when_health_is_zero
    two_unit_ship = Ship.new(2)
    two_unit_ship.hit
    two_unit_ship.hit
    assert two_unit_ship.sunk

    three_unit_ship = Ship.new(3)
    three_unit_ship.hit
    three_unit_ship.hit
    three_unit_ship.hit
    assert three_unit_ship.sunk
  end

end
