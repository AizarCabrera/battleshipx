require './lib/place_ship'

class Cell
  attr_reader :coord_x,
              :coord_y,
              :ship,
              :status

  def initialize(coord_x, coord_y, status = 0) #status 0 is neutral, 1 is miss, 2 is hit
    @coord_x = coord_x
    @coord_y = coord_y
    @ship    = nil
    @status  = status
  end

  def has_ship
    @ship = true
  end

end

# have it's own method to genenerate ship and populate it
# computer_destroyer = Ship.new(2)
# computer_submarine = Ship.new(3)
#

# c_destroyer_place = PlaceShip.new(computer_destroyer.health)
# c_submarine_place = PlaceShip.new(computer_submarine.health)
