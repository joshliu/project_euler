require 'pry'
require 'prime'

primearray = []
counter = 0
number = 0
loop do
  number += 1
  if number.prime? == true
    primearray << number
    counter += 1
  end
break if counter == 10001
end

binding.pry
