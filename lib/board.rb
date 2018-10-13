class Board
  attr_reader :row_num,
              :row_a,
              :row_b,
              :row_c,
              :row_d

  def initialize
    @row_num = { 1 => ['0'], 2 => ['1'], 3 => ['2'], 4 => ['3'], 5 => ['4'] }
    @row_a = { 1 => ['A'], 2 => [], 3 => [], 4 => [], 5 => [] }
    @row_b = { 1 => ['B'], 2 => [], 3 => [], 4 => [], 5 => [] }
    @row_c = { 1 => ['C'], 2 => [], 3 => [], 4 => [], 5 => [] }
    @row_d = { 1 => ['D'], 2 => [], 3 => [], 4 => [], 5 => [] }
  end

  def populate_board_with_cells; end

  def display_board
    p row_num.values
    p row_a.values
    p row_b.values
    p row_c.values
    p row_d.values
  end
end
