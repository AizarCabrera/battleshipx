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

  def status
    if health == 0
      "sunk"
    else
      "afloat"
    end
  end
end
