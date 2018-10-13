require './test/test_helper'

class ShipTest < Minitest::Test

  def setup
    @ship = Ship.new(2)
  end

  def test_it_exists
  assert_instance_of Ship, @ship
  end

  def test_it_has_health
    assert_equal 2, @ship.health
  end

  def test_it_has_length
    assert_equal 2, @ship.length
  end

  def test_it_can_be_damaged
    @ship.damage
    assert_equal 1, @ship.health
  end

  def test_it_can_float
    @ship.damage
    assert_equal "afloat", @ship.ship_status
  end

  def test_it_can_be_sunk
    @ship.damage
    @ship.damage
    assert_equal "sunk", @ship.ship_status
  end

  def test_it_can_place_a_destroyer_randomly
    skip
    refute [[1, 4], [1, 3]] , @ship.place_destroyer
  end

  def test_it_can_place_a_submarine_randomly
    assert_equal 3 , @ship.place_submarine
  end

end
