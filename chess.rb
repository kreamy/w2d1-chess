class Board

  def initialize(pol = nil)
    @grid = Array.new(8) {Array.new(8)}
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
