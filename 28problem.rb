require "pry"

sum = 0
topleft = 0
topright = 0
bottomleft = 0
bottomright = 0

(1..1001).step(2) do |x|
  topright += (x**2)
  topleft += ((x**2)-(x-1))
  bottomleft += ((x-1)**2)+1
  bottomright += ((x-1)**2)-(x-2)
end

sum += topleft
sum += topright
sum += bottomleft
sum += bottomright

sum -= 3

puts sum

binding.pry
