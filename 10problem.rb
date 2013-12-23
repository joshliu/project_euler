require "pry"
require "prime"

totalsum = 0
primearray = []
(1..2000000).each {|num| primearray << num if num.prime? == true}
primearray.each {|prime| totalsum += prime}

binding.pry