require 'benchmark'

def perfect_square_simple?(n)
	return false if n < 0
	odd, x = 1, 0
	while (x < n)
		x += odd
		odd += 2
	end
	return x == n
end

def perfect_square_naive?(n)
	return false if n < 0
	root = Math.sqrt(n)
	root = root.to_i
	return root * root == n
end

1.upto(100) do |i|
	if (perfect_square_simple?(i))
		p i
	end
	if (perfect_square_naive?(i))
		p i
	end
end

Benchmark.bm do |x|
  x.report("naive:") { (1..100000).each { |i| perfect_square_naive?(i) }}
  x.report("simple:") { (1..100000).each { |i| perfect_square_simple?(i) } }
end
