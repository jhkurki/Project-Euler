require 'test/unit'

def fibo(limit)
  a, b = 0, 1
  while a < limit do
    yield a
    a, b = b, a + b
  end
end

def even_fibo_sum(limit)
  sum = 0
  fibo(limit) { |i| sum += i if (i % 2 == 0) }
  return sum
end

class FiboSumTest < Test::Unit::TestCase

  def test_fibo_sum
    assert_equal(4613732, even_fibo_sum(4000000))
  end

end
