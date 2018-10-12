require './lib/board'
require './lib/ship'
require './lib/space'
require 'pry'

class Game

  def self.begin
  # player_1 = Player.new('computer')
  # player_2 = Player.new('human')
  # Computer places the ships randomly
  display
  puts 'I have laid out my ships on the grid. You now need to layout your two ships.'
  puts 'The first is two units long and the second is three units long.'
  puts 'The grid has A1 at the top left and D4 at the bottom right.'
  enter_coordinates
  end

  def self.display
  board = Board.new
  board.display_board
  end

  def self.enter_coordinates
    puts 'Enter the squares for the two-unit ship:'
    input = gets.chomp
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
