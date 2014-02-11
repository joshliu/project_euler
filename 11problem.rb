require "pry"
require "awesome_print"

string_of_nums = File.read("problem_11_input.txt")
array_of_nums = string_of_nums.split("\n")
array_of_nums.map! { |x| x.split(" ") }
largest_product = 0
some_product = 0
whichnumber = 1

array_of_nums.each do |eacharray|
	eacharray.map! { |x| x.to_i }
end

(0..19).each do |arrayindex|
	arrayexamined = array_of_nums[arrayindex]
	(0..16).each do |numindex|
		some_product = arrayexamined[numindex]*arrayexamined[numindex+1]*arrayexamined[numindex+2]*arrayexamined[numindex+3]
		puts "#{whichnumber}, #{some_product}"
		whichnumber += 1
		largest_product = some_product if some_product > largest_product
	end
end

(0..16).each do |index|
	(0..19).each do |numindex|
		product = array_of_nums[index][numindex]*array_of_nums[index+1][numindex]*array_of_nums[index+2][numindex]*array_of_nums[index+3][numindex]
		puts "#{whichnumber}, #{product}"
		whichnumber += 1
		largest_product = product if product > largest_product
	end
end

(0..16).each do |index|
	(0..16).each do |numindex|
		product = array_of_nums[index][numindex]*array_of_nums[index+1][numindex+1]*array_of_nums[index+2][numindex+2]*array_of_nums[index+3][numindex+3]
		puts "#{whichnumber}, #{product}"
		whichnumber += 1
		largest_product = product if product > largest_product
	end
end

(2..19).each do |index|
	(0..16).each do |numindex|
		product = array_of_nums[index][numindex]*array_of_nums[index-1][numindex+1]*array_of_nums[index-2][numindex+2]*array_of_nums[index-3][numindex+3]
		puts "#{whichnumber}, #{product}"
		puts "#{array_of_nums[index][numindex]}, #{array_of_nums[index-1][numindex+1]}, #{array_of_nums[index-2][numindex+2]}, #{array_of_nums[index-3][numindex+3]}"
		whichnumber += 1
		largest_product = product if product > largest_product
	end
end

puts "The answer is #{largest_product}"

binding.pry