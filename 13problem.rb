require "pry"

str_of_nums = File.read("problem_13_input.txt")


a_of_nums = str_of_nums.split("\n")
a_of_nums.map! { |x| x.to_i }
total = a_of_nums.reduce(:+)

final_array = total.to_s.split("")[0,10]
final_array.map! { |n| n.to_i }
final_array.reduce(:+)

binding.pry