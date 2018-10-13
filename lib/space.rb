require 'pry'
require './lib/cell'

class Space
  attr_reader :valid_guesses,
              :guessed,
              :guess

  def initialize
    # @guess = guess
    @guessed = []
    @place = []
  end

  # def place_usr_ship(place)

  def place_user_ships(guess)
    valid_spots = %w[A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4]

    if valid_spots.include?(guess)
      @guessed << guess
      empty_spot = valid_spots - @guessed

      empty_spots = {}
      empty_spot.map do |test|
        test = Cell.new(test.chars[0], test.chars[1])
        empty_spots[test.x_y] = test
      end

      ship_spots = {}
      @guessed.map do |test|
        test = Cell.new(test.chars[0], test.chars[1])
        test.has_ship
        ship_spots[test.x_y] = test
      end
      @valid_guesses = empty_spots.merge(ship_spots)
    else
      p 'try again.'
      p '>> '
      input = gets.chomp
      place_user_ships(input.upcase.to_s)
    end

    @valid_guesses
  end

  def store_value
    @valid_guesses
  end
end
