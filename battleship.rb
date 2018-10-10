require './lib/board'
require './lib/ship'
require './lib/game'
require './lib/player'
require './lib/space'
require 'pry'


class Battleship

  def initialize
    start
  end

  # If they enter p or play then they enter the ship layout described below.
  # If they enter i or instructions they should be presented with a short explanation of how the game is played.
  # If they enter q or quit then the game should exit

  def start
    puts "Welcome to BATTLESHIP"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print ">"
    input = gets.chomp
    if input == 'p' || input =='play'
      play
      elsif input == 'i' || input =='instructions'
        puts'Players take turns firing shots (by calling out a grid coordinate) to attack enemy ships.on your turn, call out a letter and a number that
        identifies a row and column on your target grid.
        Your opponent checks that coordinate on his ocean grid and responds "miss" if there is no ship there, or "hit" if you have correctly guessed a space that is
        occupied by one of his ships.'
        puts'When it is your opponents turn to fire shots at you, each time one of your ships receives a hit, put a mark on the coordinates of the ship
        corresponding to the grid.
        When one of your ships has every slot filled with red pegs, you must announce to your opponent that he has sunk
        your ship. In classic play, the phrase used is "You sunk my battleship!"'
        puts'The first player to sink all five of his opponents ships wins the game.'
      elsif input == 'q' || input =='quit'
        puts "Bye...!"
      else
        puts 'Invalid answer, please, try again'
        start
    end

    # When the player decides to start a game, the computer player should place their ships.
    # The baseline computer should simply use random placements, but still obey these constraints:
  end

  def play
    player_1 = Player.new('computer')
    player_2 = Player.new('human')
    # Computer places the ships randomly
    Game.new(player_1, player_2)
    puts 'I have laid out my ships on the grid. You now need to layout your two ships.'
    puts 'The first is two units long and the second is three units long.'
    puts 'The grid has A1 at the top left and D4 at the bottom right.'

  end


  def enter_coordinates
    puts 'Enter the squares for the two-unit ship:'
    input = gets.chomp
    @board.validate_coordinates
    # if coordinates are valid, the user is prompt to take a shot
    shot
  end

  def shot
    input = gets.chomp
    # the user takes a shot
    print board
  end

end

Battleship.new
