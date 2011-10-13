

def lex_permutations(values, limit)
	permutations = []
	values.each { |v|
		permute(permutations, [v], values - [v], limit)	
	}
	return permutations.last
end

def permute(permutations, prefix, values, limit)
	permutations << prefix if values.empty?
	return if permutations.size >= limit
	values.each { |v|
		permute(permutations, prefix + [v], values - [v], limit)
	}
end

p lex_permutations((0..9).to_a, 1000000)




