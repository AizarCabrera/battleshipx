require './lib/ship'

class Cell
  attr_reader :x, :y, :ship, :status, :x_y
  def initialize(x, y, status = 0) # status 0 is neutral, 1 is miss, 2 is hit
    @x = x
    @y = y
    @ship = nil
    @status = status
    @x_y = @x.to_s + @y.to_s
  end

  def display
    if @status == 0
      space = ' '
      space
    elsif @status == 1
      space = 'M'
      space
    elsif @status == 2
      space = 'H'
      space
    end
  end

  def has_ship
    @ship = true
  end
end

# A1 = Cell.new("A", "1")
# A1.has_ship
# p A1.x
