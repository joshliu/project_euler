require "pry"
total = 0

def product(n)
	(1..n).to_a.reduce(:*)
end

array = product(100).to_s.split("") 
array.each { |x| total += x.to_i }

binding.pry