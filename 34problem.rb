require "pry"

def factorial(n)
  (1..n).to_a.reduce(:*)
end

$sum = 0

# (3..100000).each do |num|
#   if num.to_s.split("").map{ |digit| factorial(digit) }.reduce(:+) == num
#     $sum += num
#   end
# end

binding.pry
