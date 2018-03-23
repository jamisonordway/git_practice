require './lib/node'
require 'pry'


class BinarySearchTree

  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(score, title, parent = nil)
    if @root.nil?
      @root = Node.new(score, title)
      #@depth = 0
    else
      current_node = @root
      #@depth = 0
      score_direction(score, title, current_node)
    end
  end

  def score_direction(score, title, current_node)
    if score <= current_node.score
      left_of_root(score, title, current_node)
    else
      right_of_root(score, title, current_node)
    end
  end

  def left_of_root(score, title, current_node = @root)
    if current_node.node_left == nil
      current_node.node_left = Node.new(score, title, current_node)
      #@depth += 1
    else
      node_travel_direction(score, title, current_node)
    end
    @depth
  end

  def right_of_root(score, title, current_node = @root)
    if current_node.node_right == nil
      current_node.node_right = Node.new(score, title, current_node)
      #@depth += 1
    else
      node_travel_direction(score, title, current_node)
    end
    @depth
  end

  def node_travel_direction(score, current_node = @root)
    if score <= current_node.score
      current_node = current_node.node_left
    else
      current_node = current_node.node_right
    end
    #@depth += 1
    score_direction(score, title, current_node)
  end

  def include?(score, current_node = @root)
    if current_node.nil?
      false
    elsif score == current_node.score
      true
    else
      include_traverse(score, current_node)
    end
  end

  def include_traverse
    if score > current_node.score
      include?(score, current_node.node_right)
    else
      include?(score, current_node.node_left)
    end
  end

  def min
    current_node = @root
    until current_node.node_left == nil do
      current_node = current_node.node_left
    end
    { current_node.title => current_node.score }
  end

  def max
    current_node = @root
    until current_node.node_right == nil do
      current_node = current_node.node_right
    end
    { current_node.title => current_node.score }
  end

  # def depth_of(score)
  #   if @root.nil?
  #     nil
  #   elsif score == current_node.score
  #     @depth
  #   else
  #     depth_of_traverse
  #   end
  # end

  def depth_of_traverse(score, depth, current_node)
    if score > current_node.score
      @depth += 1
      depth_of(score, depth, current_node.node_right)
    else
      @depth += 1
      depth_of(score, depth, current_node.node_left)
    end
  end


  def sort(current_node = @root , movies = @movies_list)
    return "nothing here" unless current_node
    return if current_node.nil?
    sort current_node.left, movies
    movies << {current_node.score => current_node.title}
    sort current.node.right, movies
    movies
  end


  def sort_subtree

  end

  def load(filename)


  end

  def count(root = @root)
    return 0 if root.nil?
    count(root.node_left) + 1 + count(root.node_right)
  end


  def health(depth)

  end

  # def height(root = @root)
  #
  # end

  # def leaves
  #   return -1 if root.nil?
  #   if root.node_left.nil? && root.node_right.nil?
  #     return 1
  #   else
  #     return leaves(root.node_left) + leaves(root.node_right)
  #   end
  # end
  #

end #Class
