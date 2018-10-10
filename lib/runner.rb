require './place_ship'
require './board'


ship1 = Place_ship.new(2)
ship2 = Place_ship.new(3)

p ship1
p ship2


board = Board.new

p board.row_4.values
p board.row_3.values
p board.row_2.values
p board.row_1.values
