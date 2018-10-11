require './test/test_helper'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
  end

  def test_it_exists
    assert_instance_of Board, @board
  end

  def test_it_starts_with_an_empty_board
    empty_board = {1=>[], 2=>[], 3=>[], 4=>[]}
    assert_equal empty_board, @board.row_1
    assert_equal empty_board, @board.row_2
    assert_equal empty_board, @board.row_3
    assert_equal empty_board, @board.row_4
  end

  def test_it_can_have_a_row
    @board = Board.new
    assert_equal 5, board.row_1
  end

end
