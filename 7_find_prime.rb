require 'test/unit'
require 'primes'

class BigPrimeTest < Test::Unit::TestCase

  def test_find_big_prime
    assert_equal(104743, Primes.prime_no(10001))
  end

end
