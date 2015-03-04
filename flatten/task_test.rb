require_relative 'task'
require 'minitest/autorun'

class RecursionFlattenTest < Minitest::Test
  def test_empty_array
    assert_equal [], [].flatten_with_recursion
  end

  def test_real_value
    assert_equal [1, 2, 3, 4], [[1,2,[3]],4].flatten_with_recursion
    assert_equal [1], [[1]].flatten_with_recursion
    assert_equal [1, 2], [[1,2]].flatten_with_recursion
    assert_equal [1, 4], [[[[[[[1]]]]]],4].flatten_with_recursion
  end
end
