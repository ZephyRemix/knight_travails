class Node
  attr_accessor :coord, :prev

  def initialize(coord, prev = nil)
    self.coord = coord
    self.prev = prev
  end
end
