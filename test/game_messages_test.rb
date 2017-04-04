require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_messages'
require 'pry'


class GameMessagesTest < Minitest::Test

  def test_welcome_message
    message = "Welcome to BATTLESHIP\n\n"
    assert message, GameMessages.welcome_message
  end

  def test_play_or_quit_message
    message = GameMessages.play_or_quit_options
    assert_includes message, "(p)lay"
  end

  # def test_play_options
  #   assert GameMessages.instructions.include?("mission")
  # end

end
