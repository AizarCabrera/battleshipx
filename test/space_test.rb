require './test/test_helper'

class SpaceTest < Minitest::Test
  def setup
    @space = Space.new
  end

  def test_it_exists
    assert_instance_of Space, @space
  end

  def test_it_can_place_a_single_cell_ship
    assert_equal true, @space.place_user_ships('A1')['A1'].ship
  end
end
