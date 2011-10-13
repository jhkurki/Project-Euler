class Numeric
  def prime?
    return false unless integer?
    return Primes.is_prime(self.to_i)
  end
end

module Primes

  def self.is_prime(x)
    return false if x < 2
    i = 2
    while i * i <= x do
      if x % i == 0
        return false
      end
      i += 1
    end
    return true
  end
  
  def self.primes_upto(x)
    2.upto(x) { |i|
      yield i if is_prime(i)
    }
  end

  def self.prime_no(n)
    i, j = 0, 0 # ith number, jth prime
    while true
      i += 1
      if (is_prime(i))
        j += 1
        return i if j == n
      end
    end
  end

  def self.sum_of_primes_leq(x)
    sum = 0
    primes_upto(x) { |i| sum += i }
    return sum
  end
  
  def self.factor(x)
    prime_factors = Array.new
    until is_prime(x)
      primes_upto(x) { |i|
        if (x % i == 0)
          prime_factors << i
          x /= i
          break
        end
      }
    end
    return prime_factors << x
  end
  
  # slow
  def self.sieve_primes_upto(x)
    primes = Array.new
    candidates = (2..x).to_a.reverse
    
    until candidates.empty?
      prime = candidates.pop
      primes << prime
      candidates.delete_if { |c| c % prime == 0 }
    end
    
    return primes
  end

end

