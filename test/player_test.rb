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


end
