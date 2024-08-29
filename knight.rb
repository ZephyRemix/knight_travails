require_relative "node"
require_relative "graph"
require "pry-byebug"

class Knight
  attr_accessor :moves
  def initialize
    self.moves = [[2,1], [1,2], [-2,1], [-1,2], [-2,-1], [-1, -2], [2,-1], [1,-2]]
  end

  def knight_moves(start, dest)
    # create path graph
    graph = Graph.new
    dest_node = graph.bfs_implicit_graph(start, dest, self.moves)

    # search for shortest path
    shortest_path = []
    while !dest_node.prev.nil?
      shortest_path.unshift(dest_node.coord)
      dest_node = dest_node.prev
    end

    return shortest_path.unshift(start)
    
  end
end

knight = Knight.new
shortest_path = knight.knight_moves([3,3], [4,3])
puts "You made it in #{shortest_path.length - 1} moves! Here's your path:"
shortest_path.each {|coord| print "#{coord}\n"}
