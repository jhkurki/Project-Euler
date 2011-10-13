require 'test/unit'

class Integer
  def divisible_by?(divisors)
    divisors.each { |d|
      if (self.to_i % d != 0)
        return false
      end
    }
    return true
  end
end

def slow_find_divisible(divisors)
  min = 1
  until min.divisible_by?(divisors)
    min += 1
  end
  return min
end

def fast_find_divisible(divisors)
  current = divisors.inject(:*)

  divisors.each { |d|
    while (current / d).divisible_by?(divisors)
      current /= d
    end
  }
  
  return current
end

class GridProductTest < Test::Unit::TestCase

  def test_small_divisors
    assert_equal(2520, fast_find_divisible((2..10).to_a))
  end
  
  def test_big_divisors
    assert_equal(232792560, fast_find_divisible((2..20).to_a))
  end
  
end
