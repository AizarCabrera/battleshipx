require './test/test_helper'

class CellTest < Minitest::Test
  def setup
    @cell   = Cell.new(1, 1, 0)
    @cell_1 = Cell.new(2, 1, 1)
    @cell_2 = Cell.new(3, 1, 2)
  end

  def test_it_exists
    assert_instance_of Cell, @cell
  end

  def test_it_can_take_horizontal_coordinates
    assert_equal 1, @cell.coord_x
  end

  def test_it_can_take_vertical_coordinates
    assert_equal 1, @cell.coord_y
  end

  def test_it_does_not_have_ship_by_default
    assert_nil nil, @cell.ship
  end

  def test_it_can_have_a_ship
    assert_equal true, @cell.has_ship
  end

  def test_status_its_neutral_by_default
    assert_equal 0, @cell.status
  end

  def test_status_can_have_a_miss
    assert_equal 1, @cell_1.status
  end

  def test_status_can_have_a_hit
    assert_equal 2, @cell_2.status
  end

end
