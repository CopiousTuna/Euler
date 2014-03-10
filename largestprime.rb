# The goal of this problem is to find the largest prime factor for the number 600,851,475,143

def is_prime?(val)
	div = 2
	while div < val
		if val % div == 0
			return false
		end
		div += 1
	end
	return true
end

num = 600851475143
factor = 2

while factor < num
	if num % factor == 0
		num /= factor
		factor = 2
	else
		factor += 1
	end
end

if is_prime?(num)
	puts "The largest prime factor is: " + num.to_s
else
	puts "No prime factor exists!"
end