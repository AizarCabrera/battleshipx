require 'pry'

class Player
  attr_reader :type

  def initialize(player_type)
    @type = player_type
  end

end
