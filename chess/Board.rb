require_relative 'Piece'
require_relative 'NullPiece'

class Board
    attr_accessor :grid
  def initialize(grid = Array.new(8) {Array.new(8)})
    @grid = grid
    starting_position
  end
  
  private

  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end
  
  def starting_position
    (0..1).each do |row|
      (0..7).each do |col|
        self[[row, col]] = Piece.new
      end
    end
    
    (6..7).each do |row|
      (0..7).each do |col|
        self[[row, col]] = Piece.new
      end
    end
    
    (2..5).each do |row|
      (0..7).each do |col|
        self[[row, col]] = NullPiece.new
      end
    end
  end
end