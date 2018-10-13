require './test/test_helper'

class PlayerTest < Minitest::Test

  def setup
    @computer = Player.new('computer')
    @human = Player.new('human')
  end

  def test_it_exists
    assert_instance_of Player, @computer
    assert_instance_of Player, @human
  end

  def test_it_can_be_a_type_of_player
    assert_equal 'computer', @computer.type
  end

  def test_it_can_be_a_different_type_of_player
    assert_equal 'human', @human.type
  end

end
