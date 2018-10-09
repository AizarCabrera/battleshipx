require './test/test_helper'

class BoardTest < Minitest::Test

def test_it_exists
  board = Board.new
  assert_instance_of Board, board
end

def test_it_can_have_a_coordinate
  board = Board.new

  assert_equal  , board.y_coord
end

end
