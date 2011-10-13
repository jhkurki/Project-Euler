require 'primes'

def triangle_number_of(n)
	((n * n) + n) / 2
end

def factors_size(n)
	primes = Primes.factor(n)
	return primes.uniq.inject(1) { |factors, p|
		factors * (primes.count(p) + 1)
	}
end

i = 2
until factors_size(triangle_number_of(i)) > 500
	i += 1
end

p triangle_number_of(i)

