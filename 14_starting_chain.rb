
class Collaz
	def initialize
		@cache = Hash.new
		@cache[1] = 1
	end
	
	# caching works if values of n are 
	# requested from smaller to bigger
	def length_iterative(n)
		i, k = 0, n
		while @cache[k] == nil
			i, k = i + 1, next_collaz(k)
		end
		@cache[n] = i + @cache[k]
	end
	
	def length(n)
		if (@cache[n] == nil)
			@cache[n] = length(next_collaz(n)) + 1
		end
		return @cache[n]
	end
	
	def next_collaz(n)
		n % 2 == 0 ? n / 2 : 3 * n + 1
	end
end

def find_max_collaz(max)
	collaz = Collaz.new
	max_index = 0
	max_length = 0
	
	1.upto(max) { |i|
		seq_length = collaz.length(i)
		if (seq_length > max_length)
			max_index = i
			max_length = seq_length
		end
	}
	
	return max_index
end

p find_max_collaz(1000000) # 837799
