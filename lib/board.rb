class Board # still needs an initialize
  # attr_reader :row_1, :row_2, :row_3
  # attr_reader :display_board
  def initialize
  end


  def coord(x, y)
    coord[y-1] = [@row_1[x], @row_2[x], @row_3[x], @row_4[x]] # y - 1 translates it into an index value
  end

  def y_coord
    # row_1 = {1:"x", 2:"x", 3:"x"}
    # row_2 = {1:"x", 2:"x", 3:"x"}
    # row_3 = {1:"x", 2:"x", 3:"x"}
  end



    def row_1
      @row_1 = { #  x coordinates
        1 => [ ],
        2 => [ ],
        3 => [ ],
        4 => [ ]
      }
    end

    def row_2
      @row_2 = {
        1 => [ ],
        2 => [ ],
        3 => [ ],
        4 => [ ]
      }
    end

    def row_3
      @row_3 = {
        1 => [ ],
        2 => [ ],
        3 => [ ],
        4 => [ ]
      }
    end

    def row_4
      @row_4 = {
        1 => [ ],
        2 => [ ],
        3 => [ ],
        4 => [ ]
      }
    end

    # def display_board <= ## ASK ABOUT HOW TO MAKE A METHOD PRINT THEM ALL OUT
    #   display_hashes = [row_1.values, row_2.values, row_3.values, row_4.values]
    #
    # end
end

