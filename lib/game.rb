require 'pry'

class Game




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
