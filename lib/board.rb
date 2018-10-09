require 'pry'

class Board

  def initialize
    @display = [['. ', '1 ', '2 ', '3 ', '4 '],
                ['A'] + Array.new(4),
                ['B'] + Array.new(4),
                ['C'] + Array.new(4),
                ['D'] + Array.new(4)
              ]
  end
end
