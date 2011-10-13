require 'test/unit'

def grid_routes(x)
	grid = Array.new(x+1) { Array.new(x+1) { 0 } }

	1.upto(x).each { |i|
		grid[0][i] = 1
		grid[i][0] = 1
	}

	1.upto(x).each { |i|
		1.upto(x).each { |j| 
			grid[i][j] = grid[i-1][j] + grid[i][j-1]
		}
	}

	return grid[x][x]
end

class GridRoutesTest < Test::Unit::TestCase

  def test_small_grid
    assert_equal(6, grid_routes(2))
  end

  def test_large_grid
  	assert_equal(137846528820, grid_routes(20))
  end

end

