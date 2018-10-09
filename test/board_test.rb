require './test/test_helper'

class BoardTest < Minitest::Test

def test_it_exists
board = Board.new
assert_instance_of Board, board
end
end
