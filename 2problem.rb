require "pry"

total = 0
array = [1,2]
while array[-1] <= 4000000
	array << (array[-1]+array[-2])
end
array.each {|x| total += x if x%2 == 0}
puts total

binding.pry