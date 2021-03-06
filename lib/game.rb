require './lib/board'
require './lib/ship'
require './lib/space'
require './lib/player'
require 'pry'

class Game
  attr_reader :guess
  def self.begin
    # @guess = nil
    @board    = Board.new
    @computer = Player.new('computer')
    @human    = Player.new('human')
    # computer do this method of placing ships randomly (@computer.place_random)
    display
    puts 'I have laid out my ships on the grid. You now need to layout your two ships.'
    puts 'The first is two units long and the second is three units long.'
    puts 'The grid has A1 at the top left and D4 at the bottom right.'
    enter_coordinates
  end

  def self.display
    @board.display_board
  end

  def self.enter_coordinates
    puts 'Enter the squares for the two-unit ship:'
    input = gets.chomp
    # @guess = Space.new
    # @guess.place_user_ships(input.upcase)
    # @guess.store_value
    # p @board.display_board

    # @board.validate_coordinates
    # if coordinates are valid, the user is prompt to enter coordinates for a three unit ship
    # if coordinates are valid, the user is prompt to take a shot
    shot
  end

  def self.shot
    input = gets.chomp
    # the user takes a shot
    print board
  end
end
