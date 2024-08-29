require_relative "node"

class Graph
  attr_accessor :root
  def initialize
    # self.root = nil
  end

  def bfs_implicit_graph(start, dest, moves)
    q = []
    q << Node.new(start)
    i = 0

    until q[i].nil?
      moves.each do |move|
        res = q[i].coord.zip(move).map { |x, y| x + y }
        return Node.new(res, q[i]) if res == dest

        q << Node.new(res, q[i]) if (res[0] >= 0 && res[0] <=7 && res[1] >= 0 && res[1] <=7)
      end
      i += 1
    end
    q[i]
  end
end
