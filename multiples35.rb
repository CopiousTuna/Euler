# The goal of this problem is to find the sum of all multiples of 3 and 5 that
# do not exceed the value 1,000

require 'set'

multiples = Set.new
i = 3
j = 5
max_value = 1000

while i < max_value
	multiples << i
	i += 3
end

while j < max_value
	multiples << j
	j += 5
end

puts multiples.inject(:+)