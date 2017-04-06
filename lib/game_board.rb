require 'pry-state'

class GameBoard
  attr_reader :board

  def initialize
    @board = create_board
    @display_board = display_board
    @placement_coordinates = placement_coordinates
    @ships = []
  end

  def create_board
    {"Z0"=>"  *  ", "Z1"=>"  1  ", "Z2"=>"  2  ", "Z3"=>"  3  ",
     "Z4"=>"  4  ", "A0"=>"  A  ", "A1"=>"  .  ", "A2"=>"  .  ",
     "A3"=>"  .  ", "A4"=>"  .  ", "B0"=>"  B  ", "B1"=>"  .  ",
     "B2"=>"  .  ", "B3"=>"  .  ", "B4"=>"  .  ", "C0"=>"  C  ",
     "C1"=>"  .  ", "C2"=>"  .  ", "C3"=>"  .  ", "C4"=>"  .  ",
     "D0"=>"  D  ", "D1"=>"  .  ", "D2"=>"  .  ", "D3"=>"  .  ",
     "D4"=>"  .  "}
  end

  def placement_coordinates
    { "A1"=>"  .  ", "A2"=>"  .  ", "A3"=>"  .  ", "A4"=>"  .  ",
      "B1"=>"  .  ", "B2"=>"  .  ", "B3"=>"  .  ", "B4"=>"  .  ",
      "C1"=>"  .  ", "C2"=>"  .  ", "C3"=>"  .  ", "C4"=>"  .  ",
      "D1"=>"  .  ", "D2"=>"  .  ", "D3"=>"  .  ", "D4"=>"  .  "}
    end

  def display_board
    puts "========================"
    count = 1
    board.each do |key, value|
        if count % 5 == 0
          puts value
        else
          print value
       end
       count += 1
     end
    puts "========================"
  end

end
