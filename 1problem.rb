answer = 0
(1...1000).each { |x| answer += x if (x%3 == 0) || (x%5 == 0) }
puts answer