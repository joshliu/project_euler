require "pry"

total = 0
squaretotal = 0
(1..100).each do |x|
  total += x**2
  squaretotal += x
end

difference = 0
diference = total - (squaretotal**2)

puts difference

binding.pry
