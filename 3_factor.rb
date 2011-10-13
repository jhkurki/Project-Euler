require 'test/unit'
require 'primes'

class FactorTest < Test::Unit::TestCase

  def test_small_factor
    assert_equal([5, 7, 13, 29], Primes.factor(13195))
  end

  def test_large_factor
    assert_equal([71, 839, 1471, 6857], Primes.factor(600851475143))
  end

  # test prime? function
  def test_prime
    assert(13.prime?)
  end

end


