require "pry"

i = 1
answers = []

loop do
	i += 1
	score = i.to_s.split("").map { |x| x.to_i**5 }.reduce(:+)
	if i == score
		puts i
		answers << i
	end
	break if i == 200000
end

puts answers.reduce(:+)

binding.pry