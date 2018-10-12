require './place_ship'
require './board'


# ship1 = Place_ship.new(2)
# ship2 = Place_ship.new(3)
#
# p ship1
# p ship2


### SHOWS THAT NEW SHIPS CAN BE PLACED.
computer_destroyer = Ship.new(2)
computer_submarine = Ship.new(3)

# c_destroyer_place = PlaceShip.new(computer_destroyer.health)
# c_submarine_place = PlaceShip.new(computer_submarine.health)

p c_destroyer_place
p c_submarine_place



board = Board.new

p board.row_4.values.
p board.row_3.values
p board.row_2.values
p board.row_1.values
