class Node
  attr_accessor :x, :y, :children

  def initialize(x, y)
    self.x = x
    self.y = y
    self.children = Array.new()
  end

  def add_child(node)
    self.children.append(node)
  end
end
