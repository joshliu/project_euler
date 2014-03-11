require "pry"

answer_array = []
abundant_numbers = []
testing_array = (1..24).to_a

def find_factor(number)
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
	return factor_array
end

(2..12).each do |num|
	factor_sum = find_factor(num).reduce(:+)
	if factor_sum > num && abundant_numbers.include?(num) == false
		abundant_numbers << num
	end
end

abundant_numbers.each do |additive1|
	abundant_numbers.each do |additive2|
		some_sum = additive2 + additive1
		if testing_array.include?(some_sum) == false && answer_array.include?(some_sum) == false
			answer_array << some_sum
		end
	end
end

binding.pry