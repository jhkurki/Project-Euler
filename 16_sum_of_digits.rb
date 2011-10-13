
require 'test/unit'

def sum_of_digits(x)
  return x.to_s.chars.map(&:to_i).inject(:+)  
end

class SumOfDigitsTest < Test::Unit::TestCase

  def test_small_sum_of_digits
    assert_equal(26, sum_of_digits(1 << 15))
  end
  
  def test_big_sum_of_digits
    assert_equal(1366, sum_of_digits(1 << 1000))
  end

end
