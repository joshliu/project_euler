require "pry"

triangle_number = 0
number_added = 1

loop do
	array_of_factors = []
	triangle_number += number_added
	number_added += 1
	puts triangle_number
	(1..(triangle_number**0.5)).each {|factor| array_of_factors << factor if triangle_number % factor == 0}
	break if array_of_factors.size >= 250
end

puts triangle_number

binding.pry