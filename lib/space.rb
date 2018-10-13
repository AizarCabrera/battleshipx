require 'pry'
require './lib/cell'

class Space
attr_reader :valid_guesses,
            :guessed,
            :guess

  def initialize
    @guess   = guess
    @guessed = []
  end

  def find_empty_spots
    @guessed << @guess
    valid_spots = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    empty_spot = valid_spots - @guessed
    empty_spots = empty_spot.map do |test|
        test = Cell.new(test.chars[0], test.chars[1])
    end
    ship_spots = @guessed.map do |test|
      test = Cell.new(test.chars[0], test.chars[1], true )
    end
    @valid_guesses = ship_spots + empty_spots
  end

  def store_value
    @valid_guesses
  end



end
