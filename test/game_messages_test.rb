require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_messages'
require 'pry'

class GameMessagesTest < Minitest::Test

  def test_welcome_message
    assert GameMessages.welcome_message.include?("BATTLESHIP")
  end

  def test_play_or_quit_message
    assert GameMessages.play_or_quit_options.include?("(p)lay")
  end

  def test_it_has_instructions
    assert GameMessages.instructions.include?("---")
  end

  def test_it_asks_for_ship_coordinates
    assert GameMessages.ask_player_for_ship_coordinates.include?("grid")
  end

  def test_it_asks_for_two_unit_ship
    assert GameMessages.two_unit_ship.include?("two-unit")
  end

  def test_it_asks_for_two_unit_ship
    assert GameMessages.three_unit_ship.include?("three-unit")
  end

  def test_it_asks_player_to_shoot_again
    assert GameMessages.shoot_again.include?("shoot")
  end

  def test_it_tells_player_it_missed_a_shot
    assert GameMessages.player_misses_shot.include?("Missed!")
  end

  def test_it_tells_when_computer_misses_a_shot
    assert GameMessages.computer_misses_shot.include?("Misses!")
  end

  def test_it_tells_when_player_hits_target
    assert GameMessages.player_shoots_target.include?("shot")
  end

  def test_it_tells_when_player_hits_target
    assert GameMessages.player_shoots_target.include?("shot")
  end

  def test_it_tells_when_computer_hits_target
    assert GameMessages.computer_shoots_target.include?("hit")
  end

  def test_it_tells_when_computer_hits_target
    assert GameMessages.player_sinks_ship.include?("sunk")
  end

  def test_it_tells_when_a_shot_is_invalid
    assert GameMessages.invalid_shot.include?("try")
  end

  def test_it_tells_when_a_choice_is_invalid
    assert GameMessages.invalid_choice.include?("valid")
  end

  def test_it_outputs_winnder_stats
    assert GameMessages.winner_statistics.include?("Congratulations")
  end

  def test_it_outputs_losser_stats
    assert GameMessages.losser_statistics.include?(":(")
  end

end
