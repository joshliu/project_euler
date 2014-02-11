require "pry"

sum = 0
(1..1000).each do |num|
	sum += num**num
end

puts sum.to_s[-10..-1]

binding.pry