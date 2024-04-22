class Knight
  attr_accessor :pos
  BOARD_DIMENSION = 8

  def initialize(pos)
    @pos = pos
  end

  def possible_moves(pos = @pos)
    x = pos[0]
    y = pos[1]
    positions = [
      [x + 2, y + 1],
      [x + 2, y - 1],
      [x - 2, y + 1],
      [x - 2, y - 1],
      [x + 1, y + 2],
      [x - 1, y + 2],
      [x + 1, y - 2],
      [x - 1, y - 2],
    ]

    possible_pos = positions.filter do |value|
      value[0] >= 0 && value[0] <= BOARD_DIMENSION && value[1] >= 0 && value[1] <= BOARD_DIMENSION
    end

    possible_pos
  end
end
