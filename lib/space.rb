require 'pry'
require './lib/cell'

class Space
  attr_reader :valid_guesses,
              :guessed,
              :guess

  def initialize
    @guessed = []
    @place = []
    @valid_guesses = nil
  end

  def populate_cells
    valid_spots = %w[A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4]
    empty_spots = {}
    valid_spots.map do |test|
      test = Cell.new(test.chars[0], test.chars[1])
      empty_spots[test.x_y] = test
    end
    empty_spots
  end

  # def place_usr_ship(place)

  def place_user_ships(guess) # split this into sub and destroyer later
    if guess.chars[0] == guess.chars[3] && guess.chars[1].to_i + 2 == guess.chars[4].to_i
      guess = guess.split << (guess[0] + (guess.chars[1].to_i + 1).to_s) # if guess is "A1 A3" add "A2" into the array representing a ship
    elsif guess.chars[0].next.next == guess.chars[3] && guess.chars[1] == guess.chars[4]
      guess = guess.split << guess.chars[0].next + guess.chars[1] # if guess is "A1 C1" adds B1
    elsif guess.chars[0].next == guess.chars[3] && guess.chars[1] == guess.chars[4]
      guess = guess.split # if guess is "A1 A2" returns an array of coordinates
    elsif guess.chars[0] == guess.chars[3] && guess.chars[1].to_i + 1 == guess.chars[4].to_i
      guess = guess.split # if guess is "A1 B1" returns an array of coordinates
    else
      p "sorry, that doesn't work - try again"
      # either use recursion or board to re-ask for coordinates
    end

    guess.each do |guess|
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
    end
  end

  def store_value
    @valid_guesses
  end
end

# space = Space.new
# space.place_user_ships('A1 C1')
# p space.store_value
