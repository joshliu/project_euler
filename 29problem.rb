require "pry"

exponent_array = []

(2..100).each do |base|
  (2..100).each do |exponent|
    i = base ** exponent
    exponent_array << i if exponent_array.include?(i) == false
  end
end

puts exponent_array.length

binding.pry
