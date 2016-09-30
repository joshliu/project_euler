require "pry"
require "awesome_print"
final_total = 0

names = File.read("problem_22_input.txt")
array_of_names = names.gsub("\"", "").split(",")
array_of_names.sort!

array_of_names.each_with_index do |name, index|
  name = name.chars.to_a.map! {|char| char.ord - 64 }
  final_total += name.reduce(:+)*(index+1)
end

binding.pry
