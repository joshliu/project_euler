require "pry"
require "prime"

def prime_factor(num)
  prime_array = []
  (2..(num/2)).each do |factor|
    if num % factor == 0 && factor.prime?
      prime_array << factor
    end
  end
  return prime_array
end

start_num = 2
answer = 0

loop do
  if prime_factor(start_num).length == 4 && prime_factor(start_num + 1).length == 4 && prime_factor(start_num + 2).length == 4 && prime_factor(start_num + 3).length == 4
    answer = start_num
    break
  end

  start_num += 1
end

binding.pry
