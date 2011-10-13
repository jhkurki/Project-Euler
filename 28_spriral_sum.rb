
#
# builds table with sprial numbers
#
# e.g. for size 3
#
# 7 8 9
# 6 1 2
# 5 4 3
#

def build_spiral_table(size)
	table = Array.new(size) { Array.new(size) { 0 } }

	i = size / 2
	j = size / 2

	direction = [:right, :down, :left, :up]

	steps = 0 # steps taken to current direction
	length = 1 #  max steps to current direction

	for n in 1..(size * size)
		table[i][j] = n
		
		#print_table(table)

		case direction.first
			when :right
				j += 1
			when :down
				i += 1
			when :left
				j -= 1
			when :up
				i -= 1
		end

		steps += 1

		if (steps == length)
			direction.rotate! # change direction

			if (direction.first == :right or direction.first == :left)
				length += 1
			end

			steps = 0
		end
	end

	return table
end

def print_table(table)
	table.each { |row| 
		row.each { |e|
			print "\t#{e}"
		}
		print "\n"
	}
	print "\n"
end

def sum_of_diagonals(table)
	sum = 0

	table.each_index { |i|
		sum += table[i][i]
		sum += table[table.length - 1 - i][i]
	}

	# remove center overlap
	sum -= table[table.length / 2][table.length / 2]

	return sum
end

p sum_of_diagonals(build_spiral_table(1001))

