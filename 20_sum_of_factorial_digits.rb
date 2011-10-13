

p (1..100).to_a.inject(:*).to_s.chars.map(&:to_i).inject(:+)
