require './test/test_helper'

class SpaceTest < Minitest::Test
  def test_it_exists
  space = Space.new
  assert_instance_of Space, space
  end
end
