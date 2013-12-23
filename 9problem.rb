require "pry"

square_array = []
square_roots = (1..1000000).to_a
square_roots.map! { |x| x ** 0.5 }
solution_array = []

square_roots.each do |num|
	if num == num.to_i
		square_array << num**2
	end
end

square_array.each do |a|
	square_array.each do |b|
		square_array.each do |c|
			if a+b == c
				solution_array << [a**0.5, b**0.5, c**0.5]
			end
		end
	end
end

solution_array.each { |a1, b1, c1| puts a1*b1*c1 if a1+b1+c1 == 1000 }

binding.pry