require "colorize"
require_relative "cursor"

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end
  
  def render
    @board.grid.each do |row|
      puts render_row(row)
    end
    
    inspect
  end
  
  def render_row(row)
    result = ""
    row.each do |piece|
      if piece.is_a?(NullPiece)
        result << "   "
      else
        result << " x "
      end
    end
    result
  end
  
  def inspect
  end
end