require "pry"
require "prime"

numarray = []
swagrange = 600851475143**0.5
(2..swagrange.to_i).each do |num|
	if 600851475143%num == 0 and num.prime? == true
		numarray << num
	end
end
numarray.each do |factor|
	if (600851475143/factor).prime? == true
		numarray << factor
	end
end

puts numarray

binding.pry