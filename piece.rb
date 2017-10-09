

class Piece
  def initialize(color) #pos, board)
    @color = color
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
  end
end
