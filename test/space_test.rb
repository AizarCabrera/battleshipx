require './test/test_helper'

class SpaceTest < Minitest::Test
  def setup
    @space = Space.new
  end

  def test_it_exists
    assert_instance_of Space, @space
  end

  def test_it_can_have_an_empty_hash
    assert_instance_of Array, @space.coordinates
    assert_equal [], @space.coordinates
  end



end
