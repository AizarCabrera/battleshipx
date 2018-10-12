require './test/test_helper'

class PlayerTest < Minitest::Test

  def setup
    @player_1 = Player.new('computer')
    @player_2 = Player.new('human')
  end

  def test_it_exists
    assert_instance_of Player, @player_1
    assert_instance_of Player, @player_2
  end

  def test_it_can_be_a_type_of_player
    assert_equal 'computer', @player_1.type
  end

  def test_it_can_be_a_different_type_of_player
    assert_equal 'human', @player_2.type
  end

end
