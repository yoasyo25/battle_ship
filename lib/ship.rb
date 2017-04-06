class Ship
  attr_reader :hits
  attr_accessor :coords

  def initialize(coords)
    @hits = 0
    @coords = coords
  end

  def hit
    @hits += 1
  end

  def ship_size
    @coords - @hits
  end

  def sunk
    ship_size == 0 
  end

end
