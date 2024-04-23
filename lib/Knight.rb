class Knight
  BOARD_DIMENSION = 8
  attr_accessor :board_size

  def initialize()
    @board_size = BOARD_DIMENSION
  end

  def possible_moves(pos = [0,0])
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
      value[0] >= 0 && value[0] <= @board_size && value[1] >= 0 && value[1] <= @board_size
    end
  end

  def knight_moves(start, finish)
    queue = [start]
    order = []

    while(!queue.empty?) do
      current = queue.shift
      current_pos = current.last

      return current if current_pos == finish

      possible_moves(current_pos).each do |move|
        next if order.include?(move)

        next_move = current + [move]
        queue << next_move
        order << move
      end
    end
  end
end
