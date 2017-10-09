class Board

  def initialize(pos = nil)
    @grid = Array.new(8) {Array.new(8)}

  end

  def populate
    @grid.each_with_index do |row,idx|
      row.each do |col|
        if idx == 0 || idx == 1
          self[[row, col]] = Piece.new("White")
        elsif idx == 6 || idx == 7
          @grid[row][col] = Piece.new("Black")
        else
          @grid[row][col] = NullPiece.new
      end
    end
  end

  def move_piece(start_pos, end_pos)

  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

end
