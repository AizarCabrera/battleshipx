require './lib/cell'
require './lib/space'
require './lib/game'

class Board
  attr_reader :row_num,
              :row_a,
              :row_b,
              :row_c,
              :row_d,
              :cells
  def initialize
    @guess = Space.new.populate_cells
    @row_num = { 1 => ['0'], 2 => ['1'], 3 => ['2'], 4 => ['3'], 5 => ['4'] }
    @row_a = { 1 => ['A'], 2 => [@guess['A1'].display], 3 => [@guess['A2'].display], 4 => [@guess['A3'].display], 5 => [@guess['A4'].display] }
    @row_b = { 1 => ['B'], 2 => [@guess['B1'].display], 3 => [@guess['B2'].display], 4 => [@guess['B3'].display], 5 => [@guess['B4'].display] }
    @row_c = { 1 => ['C'], 2 => [@guess['C1'].display], 3 => [@guess['C2'].display], 4 => [@guess['C3'].display], 5 => [@guess['C4'].display] }
    @row_d = { 1 => ['D'], 2 => [@guess['D1'].display], 3 => [@guess['D2'].display], 4 => [@guess['D3'].display], 5 => [@guess['D4'].display] }
  end

  def display_board
    p row_num.values
    p row_a.values
    p row_b.values
    p row_c.values
    p row_d.values
  end
end
