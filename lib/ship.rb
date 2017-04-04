class Ship
  attr_reader :hits, :ship_length

  def initialize(ship_length)
    @hits = 0
    @ship_length = ship_length
  end

  def hit
    @hits += 1
  end

  def health
    @ship_length - @hits
  end

  def sunk
    health == 0
  end

end
