require './test/test_helper'

class BoardTest < Minitest::Test
  def setup
    @board = Board.new
  end

  def test_it_exists
    assert_instance_of Board, @board
  end

  def test_it_can_have_a_row
    assert_equal ({ 1 => ['0'], 2 => ['1'], 3 => ['2'], 4 => ['3'], 5 => ['4'] }), @board.row_num
  end

  def test_it_can_have_a_second_row
    assert_equal ({ 1 => ['A'], 2 => [], 3 => [], 4 => [], 5 => [] }), @board.row_a
  end

  def test_it_can_have_a_third_row
    assert_equal ({ 1 => ['B'], 2 => [], 3 => [], 4 => [], 5 => [] }), @board.row_b
  end

  def test_it_can_have_a_fourth_row
    assert_equal ({ 1 => ['C'], 2 => [], 3 => [], 4 => [], 5 => [] }), @board.row_c
  end

  def test_it_can_have_a_fifth_row
    assert_equal ({ 1 => ['D'], 2 => [], 3 => [], 4 => [], 5 => [] }), @board.row_d
  end
end
