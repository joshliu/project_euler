require "pry"

array = [1,1]
until array.last.to_s.size == 1000
	array << (array[-1]+array[-2])
end
puts array.last

binding.pry