require 'test/unit'
require 'primes'

class PrimeSumTest < Test::Unit::TestCase

  def test_small_sum
    assert_equal(17, Primes.sum_of_primes_leq(10))
  end

  def test_medium_sum
    assert_equal(5736396, Primes.sum_of_primes_leq(10000))
  end

  def test_large_sum
    assert_equal(454396537, Primes.sum_of_primes_leq(100000))
  end
  
  def test_huge_ass_sum
    assert_equal(142913828922, Primes.sum_of_primes_leq(2000000))
  end

end


