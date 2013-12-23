require "pry"

totalsum = 0
numarray = []
num = 2**1000
num = num.to_s
sarray = num.split(//)
sarray.each {|stringnumber| numarray << stringnumber.to_i}
numarray.each {|numero| totalsum += numero}
puts totalsum

binding.pry