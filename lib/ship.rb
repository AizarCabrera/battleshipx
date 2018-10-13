require 'pry'

class Ship
  attr_reader :length

  def initialize(length)
    @length = length
  end

  def health
    @length
  end

  def damage
    @length -=1
  end

  def ship_status
    if health == 0
      "sunk"
    else
      "afloat"
    end
  end

  def place_destroyer # RANDOMLY GENERATES SHIP COORDINATES
    if @length == 2
      orientation = ["vertical", "horizontal"].shuffle.pop
      if orientation == "vertical" # CAN ONLY GO DOWN
        y_place_a = [3, 4].shuffle.pop
        x_place = [1, 2].shuffle.pop
        y_place_b = y_place_a - 1
        ship_coord = [[x_place, y_place_a], [x_place, y_place_b]]
        # @ship_coord_b = [x2:x_place, y2:y_place_b] - possibly keep like this, or like this with x,y keys the same
      elsif orientation == "horizontal" #CAN ONLY GO RIGHT
        y_place = [2, 3, 4].shuffle.pop
        x_place_a = [1, 2].shuffle.pop
        x_place_b = x_place_a + 1
        ship_coord= [[x_place_a, y_place], [x_place_b, y_place]]
      end
    end
  end

  def place_submarine
    if @length == 3
      orientation = ["vertical", "horizontal"].shuffle.pop
      if orientation == "vertical" # CAN ONLY GO DOWN
        y_place_a = [3, 4].shuffle.pop
        x_place = [3, 4].shuffle.pop
        y_place_b = y_place_a - 1
        y_place_c = y_place_a - 2
        ship_coord = [[x_place, y_place_a], [x_place, y_place_b], [x_place, y_place_c]]
      else # Horizontal ship can only go right
        y_place_a = [1, 2, 3, 4].shuffle.pop
        x_place = [1, 2].shuffle.pop
        x_place_b = x_place + 1
        x_place_c = x_place + 2
        ship_coord = [[x_place, y_place_a], [x_place_b, y_place_a], [x_place_c, y_place_a]]
      end
    end
  end

end
