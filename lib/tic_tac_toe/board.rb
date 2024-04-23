class Board
  attr_accessor :slots

  def initialize()
    makeBoard()
  end

  def makeBoard()
    self.slots = Array.new(3) { Array.new(3) }
    self.slots.map { |e| e = Slot.new()  }
  end

  def printBoard()
    #
    self.slots.each_with_index do |e, i|

    end
  end
end
