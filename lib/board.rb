class Board
  attr_reader :row_1,
              :row_2,
              :row_3,
              :row_4,
              :row_5

  def initialize
    @row_1 = {1 => ["0"], 2 => ["1"], 3 => ["2"], 4 => ["3"], 5 => ["4"]}
    @row_2 = {1 => ["A"], 2 => [   ], 3 => [   ], 4 => [   ], 5 => [   ]}
    @row_3 = {1 => ["B"], 2 => [   ], 3 => [   ], 4 => [   ], 5 => [   ]}
    @row_4 = {1 => ["C"], 2 => [   ], 3 => [   ], 4 => [   ], 5 => [   ]}
    @row_5 = {1 => ["D"], 2 => [   ], 3 => [   ], 4 => [   ], 5 => [   ]}
  end

  def display_board
    p row_1.values
    p row_2.values
    p row_3.values
    p row_4.values
    p row_5.values
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




end
