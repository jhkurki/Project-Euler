require 'test/unit'

# find  a, b, c so that a^2 + b^2 == c^2 and a + b + c == x 
def find_triplet(x)
  1.upto(x / 3) { |a|
    (a+1).upto(x / 2) { |b|
      c = Math.sqrt(a * a + b * b)
      if (a + b + c == x)
        return a, b, c.to_i
      end
    }
  }
  return -1
end

class TripletTest < Test::Unit::TestCase

  def test_small_triplet
    assert_equal([3, 4, 5], find_triplet(12));
  end

  def test_big_triplet
    assert_equal([200, 375, 425], find_triplet(1000))
  end

end


