
def find_largest_palindrome
  max = 0
  100.upto(999) { |i|
    i.upto(999) { |j|
      x = i * j
      if (x == reverse_fast(x) and max < x)
        max = x
      end
    }
  }
  return max
end

def reverse_fast(x)
  x.to_s.reverse.to_i
end

def reverse_slow(x)
  rev = 0
  while (x > 0)
    rev = rev * 10 + x % 10
    x /= 10
  end
  return rev
end

p find_largest_palindrome

