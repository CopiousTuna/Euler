# The goal of this problem is to find the largest prime factor for the number 600,851,475,143

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

puts "The largest prime factor is: " + num.to_s
