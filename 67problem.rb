require "pry"

sum = 0
input_array = File.read("problem_67_input.txt")
input_array = input_array.split("\n")
input_array.map! { |array| array.split(" ") }

input_array.each do |eacharray|
	eacharray.map! { |x| x.to_i }
end

loop do
	if input_array[-1] == input_array[0]
		sum += input_array[0][0].to_i
		break
	end
	some_variable = 0
	input_array[-2] = input_array[-2].each_with_index.map do |x, index|
		if input_array[-1][index] > input_array[-1][index+1]
			some_variable = input_array[-1][index]
		else
			some_variable = input_array[-1][index+1]
		end
		x += some_variable
	end
	puts some_variable
	input_array.pop
end

puts sum

binding.pry