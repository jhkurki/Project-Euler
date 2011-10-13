require 'test/unit'

def sum_multiples_upto(a, b, n)
  (1...n).to_a.inject(0) { |r, x| 
    (x % a == 0 or x % b == 0) ? r + x : r
  }
end


class MultiplesSumTest < Test::Unit::TestCase

  def test_small_sum
    assert_equal(23, sum_multiples_upto(3, 5, 10))
  end

  # find the sum of all multiples of 3 or 5 below 1000   
  def test_large_sum
    assert_equal(233168, sum_multiples_upto(3, 5, 1000))
  end

end
