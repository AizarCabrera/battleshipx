require 'pry'
class Board # still needs an initialize
  attr_reader :row_1, :row_2, :row_3, :row_4

  def initialize
      @row_1 = { #  x coordinates
          1 => [ ],
          2 => [ ],
          3 => [ ],
          4 => [ ]
        }
        @row_2 = {
          1 => [ ],
          2 => [ ],
          3 => [ ],
          4 => [ ]
        }
        @row_3 = {
          1 => [ ],
          2 => [ ],
          3 => [ ],
          4 => [ ]
        }
        @row_4 = {
          1 => [ ],
          2 => [ ],
          3 => [ ],
          4 => [ ]
        }
  end

  #
  # def coord(x, y)
  #   coord[y-1] = [@row_1[x], @row_2[x], @row_3[x], @row_4[x]] # y - 1 translates it into an index value
  # end
  #
  #
  # def y_coord
  #   # row_1 = {1:"x", 2:"x", 3:"x"}
  #   # row_2 = {1:"x", 2:"x", 3:"x"}
  #   # row_3 = {1:"x", 2:"x", 3:"x"}
  # end

  # def display_board ## ASK ABOUT HOW TO MAKE A METHOD PRINT THEM ALL OUT
  #   display_hashes = [row_1.values, row_2.values, row_3.values, row_4.values]
  #   p display_hashes
  # end

  def display_board
    p row_4.values
    p row_3.values
    p row_2.values
    p row_1.values
  end
end

board = Board.new
board.display_board
# binding.pry
