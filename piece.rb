

class Piece

  attr_reader :color, :value

  def initialize(color) #pos, board)
    @color = color
    @value = "x"
    # @pos = pos
    # @board = board
  end
end

# class Rook < Piece
#   def initialie(color) #pos, board)
#     super(color) #pos, board)
#   end
# end

class NullPiece < Piece
  def initialize #, pos, board)
    @name = nil
    @value = " "
  end
end
