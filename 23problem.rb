require "pry"

abundant_numbers = []

(1..28123).each do |x|
	(1..x/2).each do |factor|
		factor_sum = 0
		if x % factor == 0
			factor_sum += factor
		end
		if factor_sum > x
			abundant_numbers << x
		end
	end
end

(1..28123).each do |num|
	abundant_numbers.each do |additive1|
		abundant_numbers.each do |additive2|
			if additive1 + additive2 == num && abundant_numbers.include?(num)
				abundant_numbers.delete(num)