require_relative "node"
require_relative "tree"
require "pry-byebug"

class Knight
  attr_accessor :moves
  def initialize
    self.moves = [[2,1], [1,2], [-2,1], [-1,2], [-2,-1], [-1, -2], [2,-1], [1,-2]]
  end

  def knight_moves(start, dest)
    # create path graph
    # search for shortest path
    # store shortest path to shortest_path var
    # return shortest_path
  end
end