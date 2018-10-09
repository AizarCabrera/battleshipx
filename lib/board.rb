class Board

  def y_coord
    y_coord = [@row_1] #@row_2, @row_3]
  end

  def row_1
    @row_1{
      1 => "x"
    }
  end

  # def row_1
  # @row_1 = { #  x coordinates
  #   1 => "x",
  #   2 => "x",
  #   3 => "x"
  # }

  # def row_2
  #   @row_2 = {
  #     1 => "x",
  #     2 => "x",
  #     3 => "x"
  #   }
  # end

  # def row_3
  #   @row_3 = {
  #     1 => "x",
  #     2 => "x",
  #     3 => "x"
  #   }
  # end
end







# board = Board.new
# p board.row_3.values# START WITH ROW 1 ON THE BOTTOM FOR X,Y EASE
# p board.row_2.values
# p board.row_1.values
