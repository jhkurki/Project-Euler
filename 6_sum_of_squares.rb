require 'test/unit'

def difference_of_square_sums(max_num)
  sum_of_squares = (1..max_num).to_a.inject(0) { |r, x| r + (x * x) }
  square_of_sums = (1..max_num).to_a.inject(:+) ** 2
  return square_of_sums - sum_of_squares
end

class SquareSumTest < Test::Unit::TestCase

  def test_sum_of_squares
    assert_equal(25164150, difference_of_square_sums(100))
  end

end
