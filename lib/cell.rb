require './place_ship'
require './ship'
require './board'

class Cell
  attr_reader :x, :y, :ship, :status
  def initialize(x, y, ship = false, status = 0) #status 0 is neutral, 1 is miss, 2 is hit
    @x = x
    @y = y
    @ship = ship
    @status = status
  end


end

# have it's own method to genenerate ship and populate it
computer_destroyer = Ship.new(2)
computer_submarine = Ship.new(3)


c_destroyer_place = PlaceShip.new(computer_destroyer.health)
c_submarine_place = PlaceShip.new(computer_submarine.health)

p c_destroyer_place
p c_submarine_place
