require './test/helper'

class ShipTest < Minitest::Test
  def test_it_exists
  ship = Ship.new
  assert_instance_of Ship, ship
  end
end
