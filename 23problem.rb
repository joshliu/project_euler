require "pry"

answer_array = []
abundant_numbers = []
sums = []
testing_array = (1..24).to_a

def factor_sum(number)
	factor_array = []
	if number%2 == 0
		(1..(number**0.5)).each do |factor|
			if number % factor == 0
				factor_array << factor
				factor_array << (number/factor)
			end
		end
	else
		(1..(number**0.5)).step(2) do |factor|
			if number % factor == 0
				factor_array << factor
				factor_array << (number/factor)
			end
		end
	end
	return factor_array.reduce(:+)
end

(2..24).each do |n|
	each_sum = factor_sum(n)
	if factor_sum > num
		abundant_numbers << num
	end
end

abundant_numbers.each do |additive1|
	abundant_numbers.each do |additive2|
		sum = additive2 + additive1
		sums << sum if sums.include?(sum) == false
	end
end

binding.pry