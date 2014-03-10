# The goal of this problem is to find the sum of all even values in the Fibonacci Sequence
# that do not exceed the value 4,000,000

i = 1
j = 2
total_even = 0
max_value = 4000000

while i < max_value do
	if i % 2 == 0
		total_even += i
	end
	sum = i + j
	i = j
	j = sum
end

puts total_even