# The goal of this problem is to find the largest product of two three-digit
# multiplicands that is also a palindrome

def is_palindrome?(var)
	return var == var.reverse
end

max_i = max_j = max_value = 0

for i in 100..999
	for j in 100..999
		val = i * j
		if is_palindrome?((i * j).to_s)
			if val > max_value
				max_value = val
				max_i = i
				max_j = j
			end
		end
	end
end

puts "Biggest palindrome: " + max_value.to_s
puts "Multiplicands: " + max_i.to_s + " * " + max_j.to_s
