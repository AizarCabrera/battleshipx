require './test/test_helper'

class BoardTest < Minitest::Test

def test_it_exists
board = Board.new
assert_instance_of Board, board
end

def test_board_its_empty
    board = Board.new
    expected =[['. ', '1 ', '2 ', '3 ', '4 '],
                ['A'] + Array.new(4),
                ['B'] + Array.new(4),
                ['C'] + Array.new(4),
                ['D'] + Array.new(4)
              ]
    assert_equal expected, board.display
  end
end
