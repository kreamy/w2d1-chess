require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], @board)
  end

  def render
    @board.grid.each do |row|
      arr = []
      row.each do |col|
        arr << col.value
      end
      p arr.join(" ")
    end
  end

end


board = Board.new
board.populate
display = Display.new(board)
display.render
