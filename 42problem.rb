require "pry"

def is_a_triangle_num?(num)
	(8*num+1)**0.5 == ((8*num+1)**0.5).to_i
end

$total = 0
words = File.read("problem_42_input.txt")
array_of_words = words.gsub("\"", "").split(",")

array_of_words.each do |word|
	score = word.chars.to_a.map{ |char| char.ord - 64 }.reduce(:+)
	if is_a_triangle_num?(score)
		$total += 1
	end
end

binding.pry