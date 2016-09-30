require "pry"

amicable_numbers = []
final_sum = 0

(1..10000).each do |x|
  amicable1 = 0
  amicable2 = 0
  (1..x/2).each do |factor|
    if x % factor == 0
      amicable1 += factor
    end
  end
  (1..amicable1/2).each do |factor2|
    if amicable1%factor2 == 0
      amicable2 += factor2
    end
  end
  if amicable2 == x && amicable1 != amicable2
    amicable_numbers << x
  end
end


binding.pry
