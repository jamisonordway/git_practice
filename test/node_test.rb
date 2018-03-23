require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/binary_search_tree'
require './lib/node'


class DateNightTest < MiniTest::Test

  def setup
    @node = Node.new
  end

  def test_nodes_exist
    assert_instance_of Node, @node
  end

  def test_new_node_has_score

  end

  def test_new_node_left_starts_at_nil

  end

  def test_new_node_right_starts_at_nil

  end

end
