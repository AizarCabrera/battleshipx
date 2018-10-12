require 'minitest/autorun'
require 'minitest/pride'
require './lib/cell'

class CellTest < Minitest::Test
  def setup
    @cell = Cell.new(5, 4)
  end

  def test_it_exists
    assert_instance_of Cell, @cell
  end

  def test_it_can_take_coordinates
    assert_equal 5, @cell.coord_x
    assert_equal 4, @cell.coord_y
  end
  #
  # def test_it_does_not_have_ship
  #   cell = Cell.new(5, 4)
  #
  #   assert_equal false, cell.ship
  # end
  #
  # def test_it_can_have_ship
  #   cell = Cell.new(5, 4, true) # instead you can add a ship (no true) as method
  #
  #   assert_equal true, cell.ship
  # end
  #
  # def test_its_neutral
  #   cell = Cell.new(5, 4, true)
  #
  #   assert_equal 0, cell.status
  # end
  #
  # def test_its_a_miss
  #   cell = Cell.new(5, 4, true, 1)
  #
  #   assert_equal 1, cell.status
  # end
  #
  # def test_its_hit
  #   cell = Cell.new(5, 4, true, 2)
  #
  #   assert_equal 2, cell.status
  # end

end
