require './lib/cell'
require './lib/space'

class Board
  attr_reader :row_num,
              :row_a,
              :row_b,
              :row_c,
              :row_d,
              :cells
  def initialize
    @cells = Space.new.populate_cells
    @row_num = { 1 => ['0'], 2 => ['1'], 3 => ['2'], 4 => ['3'], 5 => ['4'] }
    @row_a = { 1 => ['A'], 2 => [@cells['A1'].display], 3 => [@cells['A2'].display], 4 => [@cells['A3'].display], 5 => [@cells['A4'].display] }
    @row_b = { 1 => ['B'], 2 => [@cells['B1'].display], 3 => [@cells['B2'].display], 4 => [@cells['B3'].display], 5 => [@cells['B4'].display] }
    @row_c = { 1 => ['C'], 2 => [@cells['C1'].display], 3 => [@cells['C2'].display], 4 => [@cells['C3'].display], 5 => [@cells['C4'].display] }
    @row_d = { 1 => ['D'], 2 => [@cells['D1'].display], 3 => [@cells['D2'].display], 4 => [@cells['D3'].display], 5 => [@cells['D4'].display] }
  end

  def display_board
    p row_num.values
    p row_a.values
    p row_b.values
    p row_c.values
    p row_d.values
  end
end

board = Board.new
p board.display_board
