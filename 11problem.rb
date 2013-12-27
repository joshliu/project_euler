require "pry"
require "awesome_print"

string_of_nums = File.read("problem_11_input.txt")
array_of_nums = string_of_nums.split("\n")
array_of_nums.map! { |x| x.split(" ") }
largest_product = 0
some_product = 0
indexnum = 0

array_of_nums.each do |eacharray|
	eacharray.map! { |x| x.to_i }
end

array_of_nums.each do |swagarray|
	17.times do
		some_product = swagarray[indexnum]*swagarray[indexnum+1]*swagarray[indexnum+2]*swagarray[indexnum+3]
		puts some_product
		indexnum += 1
		largest_product = some_product if some_product > largest_product
	end
end


puts largest_product

binding.pry