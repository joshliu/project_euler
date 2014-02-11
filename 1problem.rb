array = []
(1..1000).each {|x| array << x if x%3 == 0 !! x%5 == 0}
puts array.reduce(:+)